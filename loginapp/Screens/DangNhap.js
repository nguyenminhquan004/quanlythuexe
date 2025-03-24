import React, { useState } from "react";
import {
    StyleSheet,
    Text,
    View,
    TextInput,
    TouchableOpacity,
    Image,
} from "react-native";

// Import các file ảnh cục bộ
import googleLogo from "./assets/google.png";
import eyeSlash from "./assets/eye-slash-solid.png";
import eye from "./assets/eye-solid.png";

export default function DangNhap({ navigation }) {
    console.log("DangNhap: Rendering login screen");
    const [showPassword, setShowPassword] = useState(false); // Trạng thái để hiển thị/ẩn mật khẩu
    const [password, setPassword] = useState(""); // Trạng thái để lưu giá trị mật khẩu

    const handleLogin = () => {
        console.log("DangNhap: Navigating to Home");
        navigation.navigate("Home");
    };

    // Hàm để chuyển đổi trạng thái hiển thị mật khẩu
    const toggleShowPassword = () => {
        setShowPassword(!showPassword);
    };

    return (
        <View style={styles.container}>
            <Text style={styles.title}>Đăng nhập</Text>

            <TextInput
                style={styles.input}
                placeholder="Email"
                defaultValue="Tên đăng nhập"
            />

            <View style={styles.passwordContainer}>
                <TextInput
                    style={styles.inputPassword}
                    placeholder="Mật khẩu"
                    secureTextEntry={!showPassword} // Chuyển đổi giữa hiển thị và ẩn mật khẩu
                    value={password}
                    onChangeText={setPassword}
                />
                <TouchableOpacity
                    style={styles.eyeIcon}
                    onPress={toggleShowPassword}
                >
                    <Image
                        source={showPassword ? eye : eyeSlash} // Chuyển đổi giữa eye và eye-slash
                        style={styles.eyeIconImage}
                    />
                </TouchableOpacity>
            </View>

            <TouchableOpacity>
                <Text style={styles.forgotPassword}>Quên mật khẩu</Text>
            </TouchableOpacity>

            <TouchableOpacity style={styles.loginButton} onPress={handleLogin}>
                <Text style={styles.loginButtonText}>Đăng nhập</Text>
            </TouchableOpacity>

            <View style={styles.signupContainer}>
                <Text>Bạn chưa có tài khoản? </Text>
                <TouchableOpacity>
                    <Text style={styles.signupText}>Đăng ký ngay</Text>
                </TouchableOpacity>
            </View>

            <Text style={styles.socialLoginText}>Hoặc đăng nhập với</Text>

            <View style={styles.socialButtonsContainer}>
                <TouchableOpacity style={styles.socialButton}>
                    <Image source={googleLogo} style={styles.socialIcon} />
                    <Text style={styles.socialButtonText}>
                        Đăng nhập sử dụng Gmail
                    </Text>
                </TouchableOpacity>
            </View>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: "#f5f5f5",
        alignItems: "center",
        justifyContent: "center",
        padding: 20,
    },
    title: {
        fontSize: 24,
        fontWeight: "bold",
        marginBottom: 30,
    },
    input: {
        width: "100%",
        height: 50,
        backgroundColor: "#fff",
        borderRadius: 8,
        paddingHorizontal: 15,
        marginBottom: 15,
        borderWidth: 1,
        borderColor: "#ddd",
    },
    passwordContainer: {
        width: "100%",
        flexDirection: "row",
        alignItems: "center",
        marginBottom: 15,
    },
    inputPassword: {
        flex: 1,
        height: 50,
        backgroundColor: "#fff",
        borderRadius: 8,
        paddingHorizontal: 15,
        borderWidth: 1,
        borderColor: "#ddd",
    },
    eyeIcon: {
        position: "absolute",
        right: 15,
        height: 50,
        justifyContent: "center",
        alignItems: "center",
    },
    eyeIconImage: {
        width: 20, // Giảm kích thước để đồng đều
        height: 20,
    },
    forgotPassword: {
        color: "#007bff",
        alignSelf: "flex-end",
        marginBottom: 20,
    },
    loginButton: {
        width: "100%",
        height: 50,
        backgroundColor: "#007bff",
        borderRadius: 8,
        justifyContent: "center",
        alignItems: "center",
        marginBottom: 20,
    },
    loginButtonText: {
        color: "#fff",
        fontSize: 16,
        fontWeight: "bold",
    },
    signupContainer: {
        flexDirection: "row",
        marginBottom: 30,
    },
    signupText: {
        color: "#007bff",
        fontWeight: "bold",
    },
    socialLoginText: {
        fontSize: 16,
        marginBottom: 20,
    },
    socialButtonsContainer: {
        width: "100%",
        alignItems: "center",
    },
    socialButton: {
        flexDirection: "row",
        alignItems: "center",
        width: "100%",
        height: 50,
        backgroundColor: "#fff",
        borderRadius: 8,
        paddingHorizontal: 15,
        marginBottom: 10,
        borderWidth: 1,
        borderColor: "#ddd",
    },
    socialIcon: {
        width: 24,
        height: 24,
        marginRight: 10,
    },
    socialButtonText: {
        fontSize: 14,
    },
});

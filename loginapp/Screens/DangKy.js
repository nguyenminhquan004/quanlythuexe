import React, { useState } from "react";
import {
    StyleSheet,
    Text,
    View,
    TextInput,
    TouchableOpacity,
} from "react-native";
import { Ionicons } from "@expo/vector-icons"; // Thư viện biểu tượng

export default function App() {
    // Trạng thái để quản lý chế độ hiển thị mật khẩu
    const [hienMatKhau, setHienMatKhau] = useState(false);

    return (
        <View style={styles.container}>
            {/* Tiêu đề */}
            <Text style={styles.tieuDe}>Đăng ký</Text>

            {/* Trường nhập Tên đăng nhập */}
            <View style={styles.nhapLieuContainer}>
                <Text style={styles.nhapLieuLabel}>
                    Tên đăng nhập <Text style={styles.dauSao}>*</Text>
                </Text>
                <TextInput style={styles.nhapLieu} />
            </View>

            {/* Trường nhập Mật khẩu với biểu tượng con mắt */}
            <View style={styles.nhapLieuContainer}>
                <Text style={styles.nhapLieuLabel}>
                    Mật khẩu <Text style={styles.dauSao}>*</Text>
                </Text>
                <View style={styles.nhapLieuVoiBieuTuong}>
                    <TextInput
                        style={styles.nhapLieuTrong} // Ô nhập liệu không có viền riêng
                        secureTextEntry={!hienMatKhau} // Ẩn/hiện mật khẩu dựa trên trạng thái
                    />
                    <TouchableOpacity
                        style={styles.bieuTuongContainer}
                        onPress={() => setHienMatKhau(!hienMatKhau)} // Chuyển đổi trạng thái khi nhấn
                    >
                        <Ionicons
                            name={hienMatKhau ? "eye" : "eye-off"} // Chọn biểu tượng dựa trên trạng thái
                            size={24}
                            color="#888"
                        />
                    </TouchableOpacity>
                </View>
            </View>

            {/* Trường nhập Họ và tên */}
            <View style={styles.nhapLieuContainer}>
                <Text style={styles.nhapLieuLabel}>
                    Họ và tên <Text style={styles.dauSao}>*</Text>
                </Text>
                <TextInput style={styles.nhapLieu} />
            </View>

            {/* Trường nhập Số điện thoại */}
            <View style={styles.nhapLieuContainer}>
                <Text style={styles.nhapLieuLabel}>
                    Số điện thoại <Text style={styles.dauSao}>*</Text>
                </Text>
                <TextInput style={styles.nhapLieu} keyboardType="phone-pad" />
            </View>

            {/* Nút Đăng ký */}
            <TouchableOpacity style={styles.nutDangKy}>
                <Text style={styles.vanBanNutDangKy}>Đăng ký</Text>
            </TouchableOpacity>
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
    tieuDe: {
        fontSize: 24,
        fontWeight: "bold",
        marginBottom: 30,
    },
    nhapLieuContainer: {
        width: "100%",
        marginBottom: 15,
    },
    nhapLieuLabel: {
        fontSize: 16,
        color: "#888",
        marginBottom: 5,
    },
    dauSao: {
        color: "red", // Dấu sao màu đỏ
    },
    nhapLieu: {
        width: "100%",
        height: 50,
        backgroundColor: "#fff",
        borderRadius: 8,
        paddingHorizontal: 15,
        borderWidth: 1,
        borderColor: "#ddd",
        fontSize: 16,
    },
    nhapLieuVoiBieuTuong: {
        flexDirection: "row",
        alignItems: "center",
        width: "100%",
        height: 50,
        backgroundColor: "#fff",
        borderWidth: 1,
        borderColor: "#ddd",
        borderStyle: "solid",
        borderRadius: 8,
        overflow: "hidden", // Đảm bảo các phần tử con không làm méo viền
    },

    nhapLieuTrong: {
        flex: 1, // Chiếm toàn bộ không gian còn lại
        height: "100%", // Đảm bảo chiều cao khớp với View cha
        backgroundColor: "#fff",
        paddingHorizontal: 15,
        fontSize: 16,
        borderTopLeftRadius: 8, //
        borderBottomLeftRadius: 8,
    },

    bieuTuongContainer: {
        paddingHorizontal: 0,
        paddingRight: 15,
        justifyContent: "center",
        alignItems: "center",
    },
    nutDangKy: {
        width: "100%",
        height: 50,
        backgroundColor: "#007bff",
        borderRadius: 8,
        justifyContent: "center",
        alignItems: "center",
        marginTop: 20,
    },
    vanBanNutDangKy: {
        color: "#fff",
        fontSize: 16,
        fontWeight: "bold",
    },
});

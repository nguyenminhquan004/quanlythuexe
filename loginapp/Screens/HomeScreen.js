import * as React from "react";
import { Text, View, StyleSheet, Image, TouchableOpacity } from "react-native";
import { Ionicons } from "@expo/vector-icons";

export default function HomeScreen({ navigation }) {
    console.log("Navigation prop:", navigation); // Kiểm tra giá trị của navigation

    const handleCategoryPress = () => {
        console.log("Navigating to CompanyDetails");
        navigation.navigate("CompanyDetails");
    };

    return (
        <View style={styles.container}>
            <View style={styles.header}></View>
            <View style={styles.greetingContainer}>
                <View style={styles.greeting}>
                    <View style={styles.greetingWithIcon}>
                        <View style={styles.iconContainer}>
                            <Ionicons
                                name="person-circle-outline"
                                size={32}
                                color="white"
                            />
                        </View>
                        <View style={styles.greetingTextContainer}>
                            <Text style={styles.greetingText}>Xin chào</Text>
                            <Text style={styles.userName}>
                                Nguyễn Minh Quân
                            </Text>
                        </View>
                    </View>
                </View>
                <TouchableOpacity>
                    <Ionicons name="notifications" size={24} color="white" />
                </TouchableOpacity>
            </View>

            <View style={styles.illustrationContainer}>
                <Text style={styles.illustrationText}>
                    Chúc bạn một ngày mới tốt lành
                </Text>
                <Image
                    source={require("./assets/trangchu_app.png")}
                    style={styles.illustration}
                />
            </View>

            <Text style={styles.categoryTitle}>Danh mục</Text>
            <View style={styles.categoryWrapper}>
                <TouchableOpacity
                    style={styles.categoryContainer}
                    onPress={handleCategoryPress}
                    activeOpacity={0.7}
                >
                    <View style={styles.subTitleContainer}>
                        <Text style={styles.subTitle}>Trụ sở công ty</Text>
                        <TouchableOpacity
                            style={styles.checkCircle}
                            onPress={() => {}}
                        >
                            <Ionicons
                                name="checkmark-sharp"
                                size={20}
                                color="white"
                            />
                        </TouchableOpacity>
                    </View>
                    <View style={styles.cardsContainer}>
                        <View
                            style={[
                                styles.card,
                                { backgroundColor: "#E6F0FA" },
                            ]}
                        >
                            <View style={styles.cardHeader}>
                                <Ionicons
                                    name="document-text-outline"
                                    size={20}
                                    color="#333"
                                />
                                <Text style={styles.cardTitle}>Hợp đồng</Text>
                            </View>
                            <Text style={styles.cardNumberBlue}>0</Text>
                        </View>
                        <View
                            style={[
                                styles.card,
                                { backgroundColor: "#FFF9E6" },
                            ]}
                        >
                            <View style={styles.cardHeader}>
                                <Ionicons
                                    name="people-outline"
                                    size={20}
                                    color="#333"
                                />
                                <Text style={styles.cardTitle}>Khách hàng</Text>
                            </View>
                            <Text style={styles.cardNumberOrange}>0</Text>
                        </View>
                        <View
                            style={[
                                styles.card,
                                { backgroundColor: "#E6FAE6" },
                            ]}
                        >
                            <View style={styles.cardHeader}>
                                <Ionicons
                                    name="car-outline"
                                    size={20}
                                    color="#333"
                                />
                                <Text style={styles.cardTitle}>Xe active</Text>
                            </View>
                            <Text style={styles.cardNumberGreen}>0</Text>
                        </View>
                    </View>
                </TouchableOpacity>
            </View>

            <View style={styles.bottomNav}>
                <TouchableOpacity style={styles.navItem}>
                    <Ionicons name="business" size={24} color="#1E90FF" />
                    <Text style={styles.navText}>Chi nhánh</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.navItem}>
                    <Ionicons name="grid-outline" size={24} color="#888" />
                    <Text style={styles.navText}>Chức năng</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.navItem}>
                    <Ionicons name="warning-outline" size={24} color="#888" />
                    <Text style={styles.navText}>Cảnh báo</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.navItem}>
                    <Ionicons name="person-outline" size={24} color="#888" />
                    <Text style={styles.navText}>Cá nhân</Text>
                </TouchableOpacity>
            </View>
        </View>
    );
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        backgroundColor: "#F5F5F5",
    },
    header: {
        backgroundColor: "#1E90FF",
        paddingTop: 40,
        paddingBottom: 10,
        alignItems: "center",
    },
    greetingContainer: {
        backgroundColor: "#1E90FF",
        flexDirection: "row",
        justifyContent: "space-between",
        paddingHorizontal: 20,
        paddingBottom: 20,
        alignItems: "center",
    },
    greeting: {
        flexDirection: "column",
    },
    greetingWithIcon: {
        flexDirection: "row",
        alignItems: "center",
    },
    iconContainer: {
        marginRight: 10,
    },
    greetingTextContainer: {
        flexDirection: "column",
    },
    greetingText: {
        color: "white",
        fontSize: 16,
    },
    userName: {
        color: "white",
        fontSize: 20,
        fontWeight: "bold",
    },
    illustrationContainer: {
        flexDirection: "row",
        alignItems: "center",
        marginVertical: 20,
        paddingHorizontal: 20,
    },
    illustrationText: {
        fontSize: 16,
        color: "#333",
        marginRight: 15,
        flexShrink: 1,
    },
    illustration: {
        width: 200,
        height: 120,
        borderRadius: 10,
    },
    categoryTitle: {
        fontSize: 18,
        color: "#333",
        marginHorizontal: 20,
        marginBottom: 10,
    },
    categoryWrapper: {
        backgroundColor: "white",
        marginHorizontal: 20,
        borderRadius: 10,
        paddingVertical: 15,
        elevation: 3,
        shadowColor: "#000",
        shadowOffset: { width: 0, height: 2 },
        shadowOpacity: 0.1,
        shadowRadius: 4,
    },
    categoryContainer: {
        paddingHorizontal: 15,
    },
    subTitleContainer: {
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "space-between",
    },
    subTitle: {
        fontSize: 18,
        color: "#000",
        fontWeight: "700",
        marginVertical: 5,
        paddingLeft: 10,
    },
    checkCircle: {
        width: 28,
        height: 28,
        borderRadius: 14,
        backgroundColor: "#1E90FF",
        justifyContent: "center",
        alignItems: "center",
    },
    cardsContainer: {
        flexDirection: "row",
        justifyContent: "space-between",
        marginTop: 10,
        paddingHorizontal: 10,
    },
    card: {
        width: 90,
        height: 60,
        padding: 8,
        borderRadius: 10,
        alignItems: "center",
        justifyContent: "space-between",
        marginHorizontal: 2,
    },
    cardHeader: {
        flexDirection: "row",
        alignItems: "center",
        height: 25,
        width: "100%",
    },
    cardTitle: {
        fontSize: 12,
        color: "#333",
        marginLeft: 5,
        flexShrink: 1,
        textAlign: "center",
    },
    cardNumberBlue: {
        fontSize: 16,
        fontWeight: "bold",
        color: "#1E90FF",
        marginTop: 3,
    },
    cardNumberOrange: {
        fontSize: 16,
        fontWeight: "bold",
        color: "#FF8C00",
        marginTop: 3,
    },
    cardNumberGreen: {
        fontSize: 16,
        fontWeight: "bold",
        color: "#32CD32",
        marginTop: 3,
    },
    bottomNav: {
        flexDirection: "row",
        justifyContent: "space-around",
        paddingVertical: 10,
        backgroundColor: "white",
        borderTopWidth: 1,
        borderTopColor: "#E0E0E0",
        position: "absolute",
        bottom: 0,
        width: "100%",
    },
    navItem: {
        alignItems: "center",
    },
    navText: {
        fontSize: 12,
        color: "#888",
        marginTop: 5,
    },
});

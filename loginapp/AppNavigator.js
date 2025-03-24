import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";

// Import các màn hình
import DangNhap from "./Screens/DangNhap";
import HomeScreen from "./Screens/HomeScreen";
import CompanyDetails from "./Screens/CompanyDetails";

const Stack = createNativeStackNavigator();

export default function AppNavigator() {
    console.log("AppNavigator: Initializing with DangNhap as initial route");
    return (
        <NavigationContainer>
            <Stack.Navigator initialRouteName="DangNhap">
                {/* Màn hình đăng nhập */}
                <Stack.Screen
                    name="DangNhap"
                    component={DangNhap}
                    options={{ title: "Đăng nhập", headerShown: false }}
                />
                {/* Màn hình Trang chủ */}
                <Stack.Screen
                    name="Home"
                    component={HomeScreen}
                    options={{ title: "Trang chủ", headerShown: false }}
                />
                {/* Màn hình Chi tiết công ty */}
                <Stack.Screen
                    name="CompanyDetails"
                    component={CompanyDetails}
                    options={{ title: "Chi tiết công ty" }}
                />
            </Stack.Navigator>
        </NavigationContainer>
    );
}

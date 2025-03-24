import "setimmediate";
import { StatusBar } from "expo-status-bar";
import { StyleSheet, Text, View } from "react-native";
import AppNavigator from "./AppNavigator";

export default function App() {
    console.log("App: Rendering AppNavigator");
    return <AppNavigator />;
}

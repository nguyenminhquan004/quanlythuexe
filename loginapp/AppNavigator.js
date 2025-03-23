import * as React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/native-stack";
import HomeScreen from "./HomeScreen";
import CompanyDetails from "./CompanyDetails";

const Stack = createStackNavigator();

export default function AppNavigator() {
    return (
        <NavigationContainer>
            <Stack.Navigator initialRouteName="Home">
                <Stack.Screen name="Home" component={HomeScreen} />
                <Stack.Screen
                    name="CompanyDetails"
                    component={CompanyDetails}
                />
            </Stack.Navigator>
        </NavigationContainer>
    );
}

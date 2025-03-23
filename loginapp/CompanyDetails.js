import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

export default function CompanyDetails({ navigation }) {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Đây là trang chi tiết công ty</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  text: {
    fontSize: 20,
  },
});
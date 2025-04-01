import React from 'react';
import { View, Text, Image, StyleSheet, TouchableOpacity } from 'react-native';
import { useNavigation } from '@react-navigation/native';
import Icon from "react-native-vector-icons/MaterialCommunityIcons";
import HomeScreenCus from './HomeScreenCus';

const MotorcycleDetailScreen = ({ route }) => {
  const navigation = useNavigation();

  // Dữ liệu mẫu
  const defaultMotorcycle = {
    name: 'Honda Air Blade 2023',
    price: '500,000 VND/ngày',
    image: 'https://via.placeholder.com/300', // Ảnh mẫu
    seats: 2,
    trunk: 'Có',
    fuel: 'Xăng',
  };

  const motorcycle = route?.params?.motorcycle || defaultMotorcycle;

  return (
    <View style={styles.container}>
        <View style={styles.header}>
            <TouchableOpacity onPress={() => navigation.navigate('Home Cutomer Screen')}><Icon name='arrow-left' size={40}/></TouchableOpacity>
            <Text style={styles.textHead}>Chi Tiết</Text>
            <View></View>
        </View>
      <Image source={require('../../assets/Ab.png')} style={styles.image} />
      <Text style={styles.name}>{motorcycle.name}</Text>
      <Text style={styles.price}>{motorcycle.price}</Text>
      <Text style={styles.info}>Thông tin chi tiết</Text>
      <Text style={styles.detail}>Chỗ ngồi: {motorcycle.seats}</Text>
      <Text style={styles.detail}>Cốp: {motorcycle.trunk}</Text>
      <Text style={styles.detail}>Nhiên liệu: {motorcycle.fuel}</Text>
      <TouchableOpacity
        style={styles.button}
        onPress={() => navigation.navigate('Booking', { motorcycle })}
      >
        <Text style={styles.buttonText}>Đặt ngay</Text>
      </TouchableOpacity>
    </View>
  );
};

const styles = StyleSheet.create({
  container: { flex: 1, padding: 20 },
  header:{ flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center'},
  textHead: { fontSize: 20, fontWeight: 'bold',marginRight: 40,},
  image: { width: '100%', height: 200, borderRadius: 8, marginTop: 15, },
  name: { fontSize: 20, fontWeight: 'bold', marginVertical: 10 },
  price: { fontSize: 18, color: 'green' },
  info: { fontSize: 16, fontWeight: 'bold', marginTop: 10 },
  detail: { fontSize: 14, marginVertical: 5 },
  button: { backgroundColor: 'green', padding: 15, borderRadius: 8, alignItems: 'center', marginTop: 20 },
  buttonText: { color: '#fff', fontSize: 16, fontWeight: 'bold' },
});

export default MotorcycleDetailScreen;

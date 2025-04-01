import React from "react";
import { View, Text, StyleSheet, ScrollView, FlatList, TouchableOpacity, Image} from "react-native";
import Icon from "react-native-vector-icons/MaterialCommunityIcons";
import { SafeAreaView } from "react-native-safe-area-context";
import { useNavigation } from "@react-navigation/native";




const motorcycles = [
  { id: '1', name: 'Honda Beat 2018', price: '80', image: 'https://via.placeholder.com/150' },
  { id: '2', name: 'Honda Vario 2018', price: '95', image: 'https://via.placeholder.com/150' },
  { id: '3', name: 'Scoopy', price: '80', image: 'https://via.placeholder.com/150' },
  { id: '4', name: 'Supra X 125', price: '75', image: 'https://via.placeholder.com/150' },
  { id: '5', name: 'Honda Beat 2018', price: '80', image: 'https://via.placeholder.com/150' },
  { id: '6', name: 'Honda Vario 2018', price: '95', image: 'https://via.placeholder.com/150' },
  { id: '7', name: 'Scoopy', price: '80', image: 'https://via.placeholder.com/150' },
  { id: '8', name: 'Supra X 125', price: '75', image: 'https://via.placeholder.com/150' },
];


const HomeScreenCus = () => {
  const navigation = useNavigation();

  const renderItem = ({ item }) => (
    <TouchableOpacity
      style={styles.card}
      onPress={() => navigation.navigate('MotorcycleDetailScreen', { motorcycle: item })}
    >
      <Image source={{ uri: item.image }} style={styles.image} />
      <Text style={styles.name}>{item.name}</Text>
      <Text style={styles.price}>{item.price}K/Ngày</Text>
    </TouchableOpacity>
  );





  return (
    <SafeAreaView style={styles.container}>
      {/* Header */}
      <View style={styles.header}>
        <Text style={styles.TextHead}>Motor Partner</Text>
        <Icon name="bell-outline" size={24} color="" style={styles.IconBell} />
      </View>

      {/* Nội dung chính */}
      <View style={{ flex: 1, marginHorizontal: 20 }}>
        {/* ScrollView ngang */}
        <ScrollView horizontal={true} style={styles.contents} showsHorizontalScrollIndicator={false}>
          <Image source={require('../../assets/ab2021.jpg')} style={styles.ImageTitle}/>
          <Image source={require('../../assets/Ab.png')} style={styles.ImageTitle}/>
        </ScrollView>

        {/* Phần Car */}
        <Text style={styles.title}>Xu hướng quanh bạn</Text>
          <FlatList
            data={motorcycles}
            renderItem={renderItem}
            keyExtractor={(item) => item.id}
            numColumns={2}
          />
        {/* Phần footer */}
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  header: {
    width: '100%',
    height: 50,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 20,
  },
  TextHead: {
    fontSize: 20,
    fontWeight: 'bold',
    color: '#000',
  },
  IconBell: {
    marginTop: 5,
  },
  contents: {
    width: '100%',
    height: 200,
    flexDirection: 'row',
  },
  ImageTitle: { color: '#FFF',fontWeight: 'bold', width: 300, height: '90%', marginHorizontal: 5 , marginVertical: 7},
  title: { fontSize: 20, fontWeight: 'bold', marginBottom: 10 },
  card: { flex: 1, margin: 5, backgroundColor: '#fff', borderRadius: 8, padding: 10, alignItems: 'center' },
  name: { fontSize: 16, fontWeight: 'bold', marginTop: 5 },
  price: { fontSize: 14, color: 'green' },
  image: {width: 100, height: 100, borderRadius: 10,},
});

export default HomeScreenCus;

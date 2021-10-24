import React from 'react'
import { Button } from 'react-native'
import { View, Text, StyleSheet, StatusBar, SafeAreaView, ActivityIndicator } from 'react-native'
import { ScrollView } from 'react-native-gesture-handler'

const Hi = ({navigation}) => {
    return (
        <SafeAreaView style={styles.container}>
            <ScrollView style={styles.scrollView}>
                <View >
                    <Text style={styles.text}>HiHi~</Text>
                    <ActivityIndicator size="large" color="#00ff00" />
                    <Button title="Say Hello" onPress={() => navigation.navigate("Hello")}></Button>
                </View>
            </ScrollView>
        </SafeAreaView>
            
    )
}

const styles = StyleSheet.create({
    container: {
      flex: 1,
      paddingTop: StatusBar.currentHeight,
    },
    scrollView: {
      backgroundColor: 'pink',
      marginHorizontal: 20,
    },
    text: {
      fontSize: 42,
    },
  });

export default Hi



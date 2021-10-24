import React from 'react'
import { Button } from 'react-native'
import { View, Text } from 'react-native'

export default function Hello({navigation}) {
    return (
        <View>
            <Text>Hello</Text>
            <Button title="Just wanna say Hi" onPress={() => navigation.navigate("Hi")}></Button>
        </View>
    )
}

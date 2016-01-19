# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Color.destroy_all

Color.create(
  name: 'red',
  palette_50: '#FFEBEE',
  palette_100: '#FFCDD2',
  palette_200: '#EF9A9A',
  palette_300: '#E57373',
  palette_400: '#EF5350',
  palette_500: '#F44336',
  palette_600: '#E53935',
  palette_700: '#D32F2F',
  palette_800: '#C62828',
  palette_900: '#B71C1C',
  accent_100: '#FF8A80',
  accent_200: '#FF5252',
  accent_400: '#FF1744',
  accent_700: '#D50000',
  light: true
)

Color.create(
  name: 'pink',
  palette_50: '#FCE4EC',
  palette_100: '#F8BBD0',
  palette_200: '#F48FB1',
  palette_300: '#F06292',
  palette_400: '#EC407A',
  palette_500: '#E91E63',
  palette_600: '#D81B60',
  palette_700: '#C2185B',
  palette_800: '#AD1457',
  palette_900: '#880E4F',
  accent_100: '#FF8A80',
  accent_200: '#FF5252',
  accent_400: '#FF1744',
  accent_700: '#D50000',
  light: true
)

Color.create(
  name: 'purple',
  palette_50: '#F3E5F5',
  palette_100: '#E1BEE7',
  palette_200: '#CE93D8',
  palette_300: '#BA68C8',
  palette_400: '#AB47BC',
  palette_500: '#9C27B0',
  palette_600: '#8E24AA',
  palette_700: '#7B1FA2',
  palette_800: '#6A1B9A',
  palette_900: '#4A148C',
  accent_100: '#EA80FC',
  accent_200: '#E040FB',
  accent_400: '#D500F9',
  accent_700: '#AA00FF',
  light: true
)
Color.create(
  name: 'deep purple',
  palette_50: '#EDE7F6',
  palette_100: '#D1C4E9',
  palette_200: '#B39DDB',
  palette_300: '#9575CD',
  palette_400: '#7E57C2',
  palette_500: '#673AB7',
  palette_600: '#5E35B1',
  palette_700: '#512DA8',
  palette_800: '#4527A0',
  palette_900: '#311B92',
  accent_100: '#B388FF',
  accent_200: '#7C4DFF',
  accent_400: '#651FFF',
  accent_700: '#6200EA',
  light: true
)
Color.create(
  name: 'indigo',
  palette_50: '#E8EAF6',
  palette_100: '#C5CAE9',
  palette_200: '#9FA8DA',
  palette_300: '#7986CB',
  palette_400: '#5C6BC0',
  palette_500: '#3F51B5',
  palette_600: '#3949AB',
  palette_700: '#303F9F',
  palette_800: '#283593',
  palette_900: '#1A237E',
  accent_100: '#8C9EFF',
  accent_200: '#536DFE',
  accent_400: '#3D5AFE',
  accent_700: '#304FFE',
  light: true
)
Color.create(
  name: 'blue',
  palette_50: '#E3F2FD',
  palette_100: '#BBDEFB',
  palette_200: '#90CAF9',
  palette_300: '#64B5F6',
  palette_400: '#42A5F5',
  palette_500: '#2196F3',
  palette_600: '#1E88E5',
  palette_700: '#1976D2',
  palette_800: '#1565C0',
  palette_900: '#0D47A1',
  accent_100: '#82B1FF',
  accent_200: '#448AFF',
  accent_400: '#2979FF',
  accent_700: '#2962FF',
  light: true
)
Color.create(
  name: 'light blue',
  palette_50: '#E1F5FE',
  palette_100: '#B3E5FC',
  palette_200: '#81D4FA',
  palette_300: '#4FC3F7',
  palette_400: '#29B6F6',
  palette_500: '#03A9F4',
  palette_600: '#039BE5',
  palette_700: '#0288D1',
  palette_800: '#0277BD',
  palette_900: '#01579B',
  accent_100: '#80D8FF',
  accent_200: '#40C4FF',
  accent_400: '#00B0FF',
  accent_700: '#0091EA',
  light: false
)
Color.create(
  name: 'cyan',
  palette_50: '#E0F7FA',
  palette_100: '#B2EBF2',
  palette_200: '#80DEEA',
  palette_300: '#4DD0E1',
  palette_400: '#26C6DA',
  palette_500: '#00BCD4',
  palette_600: '#00ACC1',
  palette_700: '#0097A7',
  palette_800: '#00838F',
  palette_900: '#006064',
  accent_100: '#84FFFF',
  accent_200: '#18FFFF',
  accent_400: '#00E5FF',
  accent_700: '#00B8D4',
  light: false
)
Color.create(
  name: 'teal',
  palette_50: '#E0F2F1',
  palette_100: '#B2DFDB',
  palette_200: '#80CBC4',
  palette_300: '#4DB6AC',
  palette_400: '#26A69A',
  palette_500: '#009688',
  palette_600: '#00897B',
  palette_700: '#00796B',
  palette_800: '#00695C',
  palette_900: '#004D40',
  accent_100: '#A7FFEB',
  accent_200: '#64FFDA',
  accent_400: '#1DE9B6',
  accent_700: '#00BFA5',
  light: true
)
Color.create(
  name: 'green',
  palette_50: '#E8F5E9',
  palette_100: '#C8E6C9',
  palette_200: '#A5D6A7',
  palette_300: '#81C784',
  palette_400: '#66BB6A',
  palette_500: '#4CAF50',
  palette_600: '#43A047',
  palette_700: '#388E3C',
  palette_800: '#2E7D32',
  palette_900: '#1B5E20',
  accent_100: '#B9F6CA',
  accent_200: '#69F0AE',
  accent_400: '#00E676',
  accent_700: '#00C853',
  light: false
)
Color.create(
  name: 'light green',
  palette_50: '#F1F8E9',
  palette_100: '#DCEDC8',
  palette_200: '#C5E1A5',
  palette_300: '#AED581',
  palette_400: '#9CCC65',
  palette_500: '#8BC34A',
  palette_600: '#7CB342',
  palette_700: '#689F38',
  palette_800: '#558B2F',
  palette_900: '#33691E',
  accent_100: '#CCFF90',
  accent_200: '#B2FF59',
  accent_400: '#76FF03',
  accent_700: '#64DD17',
  light: false
)
Color.create(
  name: 'lime',
  palette_50: '#F9FBE7',
  palette_100: '#F0F4C3',
  palette_200: '#E6EE9C',
  palette_300: '#DCE775',
  palette_400: '#D4E157',
  palette_500: '#CDDC39',
  palette_600: '#C0CA33',
  palette_700: '#AFB42B',
  palette_800: '#9E9D24',
  palette_900: '#827717',
  accent_100: '#F4FF81',
  accent_200: '#EEFF41',
  accent_400: '#C6FF00',
  accent_700: '#AEEA00',
  light: false
)
Color.create(
  name: 'yellow',
  palette_50: '#FFFDE7',
  palette_100: '#FFF9C4',
  palette_200: '#FFF59D',
  palette_300: '#FFF176',
  palette_400: '#FFEE58',
  palette_500: '#FFEB3B',
  palette_600: '#FDD835',
  palette_700: '#FBC02D',
  palette_800: '#F9A825',
  palette_900: '#F57F17',
  accent_100: '#FFFF8D',
  accent_200: '#FFFF00',
  accent_400: '#FFEA00',
  accent_700: '#FFD600',
  light: false
)
Color.create(
  name: 'amber',
  palette_50: '#FFF8E1',
  palette_100: '#FFECB3',
  palette_200: '#FFE082',
  palette_300: '#FFD54F',
  palette_400: '#FFCA28',
  palette_500: '#FFC107',
  palette_600: '#FFB300',
  palette_700: '#FFA000',
  palette_800: '#FF8F00',
  palette_900: '#FF6F00',
  accent_100: '#FFE57F',
  accent_200: '#FFD740',
  accent_400: '#FFC400',
  accent_700: '#FFAB00',
  light: false
)
Color.create(
  name: 'orange',
  palette_50: '#FFF3E0',
  palette_100: '#FFE0B2',
  palette_200: '#FFCC80',
  palette_300: '#FFB74D',
  palette_400: '#FFA726',
  palette_500: '#FF9800',
  palette_600: '#FB8C00',
  palette_700: '#F57C00',
  palette_800: '#EF6C00',
  palette_900: '#E65100',
  accent_100: '#FFD180',
  accent_200: '#FFAB40',
  accent_400: '#FF9100',
  accent_700: '#FF6D00',
  light: false
)
Color.create(
  name: 'deep orange',
  palette_50: '#FBE9E7',
  palette_100: '#FFCCBC',
  palette_200: '#FFAB91',
  palette_300: '#FF8A65',
  palette_400: '#FF7043',
  palette_500: '#FF5722',
  palette_600: '#F4511E',
  palette_700: '#E64A19',
  palette_800: '#D84315',
  palette_900: '#BF360C',
  accent_100: '#FF9E80',
  accent_200: '#FF6E40',
  accent_400: '#FF3D00',
  accent_700: '#DD2C00',
  light: true
)
Color.create(
  name: 'brown',
  palette_50: '#EFEBE9',
  palette_100: '#D7CCC8',
  palette_200: '#BCAAA4',
  palette_300: '#A1887F',
  palette_400: '#8D6E63',
  palette_500: '#795548',
  palette_600: '#6D4C41',
  palette_700: '#5D4037',
  palette_800: '#4E342E',
  palette_900: '#3E2723',
  light: true
)
Color.create(
  name: 'grey',
  palette_50: '#FAFAFA',
  palette_100: '#F5F5F5',
  palette_200: '#EEEEEE',
  palette_300: '#E0E0E0',
  palette_400: '#BDBDBD',
  palette_500: '#9E9E9E',
  palette_600: '#757575',
  palette_700: '#616161',
  palette_800: '#424242',
  palette_900: '#212121',
  light: false
)
Color.create(
  name: 'blue grey',
  palette_50: '#ECEFF1',
  palette_100: '#CFD8DC',
  palette_200: '#B0BEC5',
  palette_300: '#90A4AE',
  palette_400: '#78909C',
  palette_500: '#607D8B',
  palette_600: '#546E7A',
  palette_700: '#455A64',
  palette_800: '#37474F',
  palette_900: '#263238',
  light: true
)
Color.create(
  name: 'black',
  palette_50: '#000000',
  palette_100: '#000000',
  palette_200: '#000000',
  palette_300: '#000000',
  palette_400: '#000000',
  palette_500: '#000000',
  palette_600: '#000000',
  palette_700: '#000000',
  palette_800: '#000000',
  palette_900: '#000000',
  light: true
)

Color.create(
  name: 'white',
  palette_50: '#ffffff',
  palette_100: '#ffffff',
  palette_200: '#ffffff',
  palette_300: '#ffffff',
  palette_400: '#ffffff',
  palette_500: '#ffffff',
  palette_600: '#ffffff',
  palette_700: '#ffffff',
  palette_800: '#ffffff',
  palette_900: '#ffffff',
  light: false
)

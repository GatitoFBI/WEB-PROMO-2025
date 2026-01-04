// String limitarString(String text) {
//   if (text.length > 15) {
//     // return '${text.substring(0, 15)}...';
//     return text.split(" ").first;
//   }
//   return text;
// }

String limitarString(String text) {
  final partes = text.trim().split(' ');
  if (partes.length >= 2) {
    return '${partes[0]} ${partes[1]}';
  } else {
    return partes[0]; // solo hay un nombre
  }
}

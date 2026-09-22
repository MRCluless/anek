import 'package:anek/anek.dart';

void setupRoutes(RadixRouter app) {
  app.get('/ping', (req, res) {
    res.json({"message": "pong"});
  });
}

void main() async {
  await HyperServer.listen(port: 3000, routeBuilder: setupRoutes);
}

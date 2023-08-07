import 'package:plan_cfe/models/subestacion.model.dart';

class Circuito {
  final int id;
  final String numero;
  final String createdAt;
  final String updatedAt;
  final Area area;
  final Substation subestacion;
  final CircuitoInfo? circuito;

  Circuito({
    required this.id,
    required this.numero,
    required this.createdAt,
    required this.updatedAt,
    required this.area,
    required this.subestacion,
    required this.circuito,
  });

  factory Circuito.fromJson(Map<String, dynamic> json) {
    return Circuito(
      id: json['id'],
      numero: json['numero'].toString(),
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      area: Area.fromJson(json['area']),
      subestacion: Substation.fromJson(json['subestacion']),
      circuito: json['circuito'] != null
          ? CircuitoInfo.fromJson(json['circuito'])
          : null,
    );
  }
}

class CircuitoInfo {
  final int id;
  final String nombre;
  final String diagrama;
  final List<Ubicacion> ubicaciones;

  CircuitoInfo({
    required this.id,
    required this.nombre,
    required this.diagrama,
    required this.ubicaciones,
  });

  factory CircuitoInfo.fromJson(Map<String, dynamic> json) {
    return CircuitoInfo(
      id: json['id'],
      nombre: json['nombre'],
      diagrama: json['diagrama'],
      ubicaciones: (json['ubicaciones'] as List)
          .map((i) => Ubicacion.fromJson(i))
          .toList(),
    );
  }
}

class Ubicacion {
  final int id;
  final int idcircuito;
  final String cuchilla;
  final String tipo;
  final String direccion;
  final int enlace;
  final String normal;
  final double latitud;
  final double longitud;
  final String createdAt;
  final String updatedAt;

  Ubicacion({
    required this.id,
    required this.idcircuito,
    required this.cuchilla,
    required this.tipo,
    required this.direccion,
    required this.enlace,
    required this.normal,
    required this.latitud,
    required this.longitud,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Ubicacion.fromJson(Map<String, dynamic> json) {
    return Ubicacion(
      id: json['id'],
      idcircuito: json['idcircuito'],
      cuchilla: json['cuchilla'],
      tipo: json['tipo'],
      direccion: json['direccion'],
      enlace: json['enlace'],
      normal: json['normal'],
      latitud: json['latitud'],
      longitud: json['longitud'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

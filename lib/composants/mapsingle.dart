import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:map/map.dart';
import 'package:latlng/latlng.dart';
import 'package:songontop/models/service.dart';

class MapSingle extends StatelessWidget {
  MapSingle({Key key, this.service}) : super(key: key);

  final Service service;
  MapController _mapController;

  @override
  Widget build(BuildContext context) {
    _mapController = MapController(location: LatLng(service.lat, service.long));

    return MapLayoutBuilder(
        controller: _mapController,
        builder: (context, transformer) {
          return Map(
              controller: _mapController,
              builder: (context, x, y, z) {
                return CachedNetworkImage(
                    imageUrl:
                        'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425');
              });
        });
  }
}

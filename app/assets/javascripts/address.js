function displayMap(lon, lat) {
    var newCoord = ol.proj.transform([lon, lat], 'EPSG:4326', 'EPSG:3857');

    var addressMarker = new ol.Feature({
        geometry: new ol.geom.Point(newCoord)
    });

    var vectorLayer = new ol.layer.Vector({
        source: new ol.source.Vector({
            features: [addressMarker]
        })
    });

    var map = new ol.Map({
        layers: [
            new ol.layer.Tile({
            source: new ol.source.OSM()
            }),
            vectorLayer
        ],
        target: 'map',
        view: new ol.View({
            center: newCoord,
            zoom: 15
            })
    });

}
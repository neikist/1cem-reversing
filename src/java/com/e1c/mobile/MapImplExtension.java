package com.e1c.mobile;

import java.util.ArrayList;

import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.b;

class MapImplExtension {

    private MapImpl mapImpl;

    MapImplExtension(MapImpl mapImpl) {
        this.mapImpl = mapImpl;
    }

    ArrayList[] kN(String[] titles, double[] coordinates) {
        ArrayList[] result = new ArrayList[2];
        ArrayList<LatLng> xj = new ArrayList<>();
        ArrayList<MarkerOptions> xk = new ArrayList<>();
        result[0] = xj;
        result[1] = xk;

        int coordinatesOffset;
        if (coordinates != null && coordinates.length > 0) {
            for (int i = 0; i < titles.length; i++) {
                coordinatesOffset = i * 2;
                LatLng latlng = new LatLng(coordinates[coordinatesOffset], coordinates[coordinatesOffset + 1]);
                xj.add(latlng);
                MarkerOptions markerOptions = new MarkerOptions()
                        .c(latlng)
                        .dS("Подменил заголовок " + titles[i]);
                if (i == 0) {
                    markerOptions.icon(b.defaultMarker(b.HUE_YELLOW));
                }
                xk.add(markerOptions);
            }
        }

        return result;
    }

}
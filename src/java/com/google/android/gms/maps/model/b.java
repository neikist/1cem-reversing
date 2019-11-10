package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.internal.f.h;

// BitmapDescriptorFactory
public final class b {
    public static final float HUE_RED = 0.0F;
    public static final float HUE_ORANGE = 30.0F;
    public static final float HUE_YELLOW = 60.0F;
    public static final float HUE_GREEN = 120.0F;
    public static final float HUE_CYAN = 180.0F;
    public static final float HUE_AZURE = 210.0F;
    public static final float HUE_BLUE = 240.0F;
    public static final float HUE_VIOLET = 270.0F;
    public static final float HUE_MAGENTA = 300.0F;
    public static final float HUE_ROSE = 330.0F;
    private static h zzcm;

    private b() {
    }

    private static h zzg() {
        return zzcm;
    }

    public static void a(h var0) {
        if (zzcm == null) {
            zzcm = var0;
        }
    }

    public static a fromResource(int var0) {
        try {
            return new a(zzg().zza(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }

    public static a fromAsset(String var0) {
        try {
            return new a(zzg().zza(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }

    public static a fromFile(String var0) {
        try {
            return new a(zzg().zzb(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }

    public static a fromPath(String var0) {
        try {
            return new a(zzg().zzc(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }

    public static a defaultMarker() {
        try {
            return new a(zzg().zzi());
        } catch (RemoteException var1) {
            throw new RuntimeException(var1);
        }
    }

    public static a defaultMarker(float var0) {
        try {
            return new a(zzg().zza(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }

    public static a fromBitmap(Bitmap var0) {
        try {
            return new a(zzg().zza(var0));
        } catch (RemoteException var2) {
            throw new RuntimeException(var2);
        }
    }
}
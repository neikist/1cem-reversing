package com.google.android.gms.internal.f;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.b.b;
import com.google.android.gms.b.b$a;

public final class j extends a implements h {

    j(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    }

    public final b zza(int var1) throws RemoteException {
        Parcel var2;
        (var2 = this.IZ()).writeInt(var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(1, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public final b zza(String var1) throws RemoteException {
        Parcel var2;
        (var2 = this.IZ()).writeString(var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(2, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public final b zzb(String var1) throws RemoteException {
        Parcel var2;
        (var2 = this.IZ()).writeString(var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(3, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public final b zzi() throws RemoteException {
        Parcel var1 = this.IZ();
        Parcel var2;
        b var3 = b$a.o((var2 = this.e(4, var1)).readStrongBinder());
        var2.recycle();
        return var3;
    }

    public final b zza(float var1) throws RemoteException {
        Parcel var2;
        (var2 = this.IZ()).writeFloat(var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(5, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public final b zza(Bitmap var1) throws RemoteException {
        Parcel var2;
        write(var2 = this.IZ(), var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(6, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public final b zzc(String var1) throws RemoteException {
        Parcel var2;
        (var2 = this.IZ()).writeString(var1);
        Parcel var3;
        b var4 = b$a.o((var3 = this.e(7, var2)).readStrongBinder());
        var3.recycle();
        return var4;
    }

    public static void write(Parcel var0, Parcelable var1) {
        if (var1 == null) {
            var0.writeInt(0);
        } else {
            var0.writeInt(1);
            var1.writeToParcel(var0, 0);
        }
    }
}

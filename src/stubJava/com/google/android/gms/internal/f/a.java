package com.google.android.gms.internal.f;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public class a implements IInterface {
    private final IBinder avv;
    private final String bFA;

    protected a(IBinder iBinder, String str) {
        this.avv = iBinder;
        this.bFA = str;
    }

    /* access modifiers changed from: protected */
    public final Parcel IZ() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.bFA);
        return obtain;
    }

    public IBinder asBinder() {
        return this.avv;
    }

    /* access modifiers changed from: protected */
    public final Parcel e(int i, Parcel parcel) {
        return null;
    }

    /* access modifiers changed from: protected */
    public final void f(int i, Parcel parcel) {

    }
}

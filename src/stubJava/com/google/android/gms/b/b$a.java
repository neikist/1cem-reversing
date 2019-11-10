package com.google.android.gms.b;

import android.os.IBinder;
import android.os.IInterface;

public abstract class b$a extends com.google.android.gms.internal.c.b implements b {

    public static class a extends com.google.android.gms.internal.c.a implements b {
        a(IBinder iBinder) {
            super(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
        }
    }

    public b$a() {
        super("com.google.android.gms.dynamic.IObjectWrapper");
    }

    public static b o(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
        return queryLocalInterface instanceof b ? (b) queryLocalInterface : new a(iBinder);
    }
}

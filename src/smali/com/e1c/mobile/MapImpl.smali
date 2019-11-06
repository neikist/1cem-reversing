.class public Lcom/e1c/mobile/MapImpl;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/google/android/gms/maps/e;


# instance fields
.field private Sd:J

.field private Xi:Lcom/google/android/gms/maps/c;

.field private extension:Lcom/e1c/mobile/MapImplExtension;

.field private final Xj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private Xk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/e1c/mobile/MapImpl;->Sd:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xj:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xk:Ljava/util/ArrayList;

    new-instance v0, Lcom/e1c/mobile/MapImplExtension;
    invoke-direct {v0, p0}, Lcom/e1c/mobile/MapImplExtension;-><init>(Lcom/e1c/mobile/MapImpl;)V
    iput-object v0, p0, Lcom/e1c/mobile/MapImpl;->extension:Lcom/e1c/mobile/MapImplExtension;

    return-void
.end method

.method private native NativeOnFinish(J)V
.end method

.method static synthetic a(Lcom/e1c/mobile/MapImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/e1c/mobile/MapImpl;->Xj:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/e1c/mobile/MapImpl;)Lcom/google/android/gms/maps/c;
    .locals 0

    iget-object p0, p0, Lcom/e1c/mobile/MapImpl;->Xi:Lcom/google/android/gms/maps/c;

    return-object p0
.end method

.method public static checkPlayServices()Z
    .locals 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/g;->K(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/g;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v2
.end method

.method public static getAddressByLocation(Landroid/location/Geocoder;DD)Landroid/location/Address;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGeoCoder()Landroid/location/Geocoder;
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    new-instance v0, Landroid/location/Geocoder;

    sget-object v1, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getLocationByAddress(Landroid/location/Geocoder;Ljava/lang/String;)Landroid/location/Address;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private kO()V
    .locals 2

    iget-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xi:Lcom/google/android/gms/maps/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/e1c/mobile/MapImpl;->aJ()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->q(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->a(Lcom/google/android/gms/maps/e;)V

    :cond_0
    return-void
.end method

.method private kP()V
    .locals 3

    iget-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xi:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/e1c/mobile/MapImpl$1;

    invoke-direct {v1, p0}, Lcom/e1c/mobile/MapImpl$1;-><init>(Lcom/e1c/mobile/MapImpl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$a;)V

    :cond_0
    iget-object v0, p0, Lcom/e1c/mobile/MapImpl;->Xk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    iget-object v2, p0, Lcom/e1c/mobile/MapImpl;->Xi:Lcom/google/android/gms/maps/c;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/c;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static show(J[Ljava/lang/String;[D)V
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/e1c/mobile/MapImpl;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "native"

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "titles"

    invoke-virtual {v2, p0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "coords"

    invoke-virtual {v2, p0, p3}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 0

    iput-object p1, p0, Lcom/e1c/mobile/MapImpl;->Xi:Lcom/google/android/gms/maps/c;

    invoke-direct {p0}, Lcom/e1c/mobile/MapImpl;->kP()V

    return-void
.end method

.method public finish()V
    .locals 2

    iget-wide v0, p0, Lcom/e1c/mobile/MapImpl;->Sd:J

    invoke-direct {p0, v0, v1}, Lcom/e1c/mobile/MapImpl;->NativeOnFinish(J)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method jL()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/MapImpl;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/e1c/mobile/MapImpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method kN()V
    .locals 3

    invoke-virtual {p0}, Lcom/e1c/mobile/MapImpl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/e1c/mobile/MapImpl;->Sd:J

    const-string v1, "titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "coords"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    # v0 - координаты; v1 - заголовки; v2 - extension;
    iget-object v2, p0, Lcom/e1c/mobile/MapImpl;->extension:Lcom/e1c/mobile/MapImplExtension;
    invoke-virtual {v2, v1, v0}, Lcom/e1c/mobile/MapImplExtension;->kN([Ljava/lang/String;[D)[Ljava/util/ArrayList;

    # v0 - массив с результатами; v1 - координаты|опции маркеров; v2 - индекс в массиве
    move-result-object v0
    const/4 v2, 0x0
    aget-object v1, v0, v2
    iput-object v1, p0, Lcom/e1c/mobile/MapImpl;->Xj:Ljava/util/ArrayList;

    const/4 v2, 0x1
    aget-object v1, v0, v2
    iput-object v1, p0, Lcom/e1c/mobile/MapImpl;->Xk:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/e1c/mobile/MapImpl;->jL()V

    const p1, 0x7f0a001e

    invoke-virtual {p0, p1}, Lcom/e1c/mobile/MapImpl;->setContentView(I)V

    invoke-virtual {p0}, Lcom/e1c/mobile/MapImpl;->kN()V

    invoke-direct {p0}, Lcom/e1c/mobile/MapImpl;->kO()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/e1c/mobile/MapImpl;->kO()V

    return-void
.end method

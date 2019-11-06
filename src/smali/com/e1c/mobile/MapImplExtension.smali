.class Lcom/e1c/mobile/MapImplExtension;
.super Ljava/lang/Object;
.source "MapImplExtenstion.java"


# instance fields
.field private mapImpl:Lcom/e1c/mobile/MapImpl;


# direct methods
.method constructor <init>(Lcom/e1c/mobile/MapImpl;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/e1c/mobile/MapImplExtension;->mapImpl:Lcom/e1c/mobile/MapImpl;

    .line 13
    return-void
.end method


# virtual methods
.method kN([Ljava/lang/String;[D)[Ljava/util/ArrayList;
    .registers 14

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/ArrayList;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 20
    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 23
    if-eqz p2, :cond_51

    array-length v5, p2

    if-lez v5, :cond_51

    .line 24
    nop

    :goto_19
    array-length v5, p1

    if-ge v3, v5, :cond_51

    .line 25
    mul-int/lit8 v5, v3, 0x2

    .line 26
    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    aget-wide v7, p2, v5

    add-int/2addr v5, v4

    aget-wide v9, p2, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 27
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->c(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041f\u043e\u0434\u043c\u0435\u043d\u0438\u043b \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->dS(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 32
    :cond_51
    return-object v0
.end method

.class public Lcom/e1c/mobile/App;
.super Landroid/app/Activity;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/e1c/mobile/App$a;,
        Lcom/e1c/mobile/App$c;,
        Lcom/e1c/mobile/App$e;,
        Lcom/e1c/mobile/App$b;,
        Lcom/e1c/mobile/App$d;,
        Lcom/e1c/mobile/App$f;
    }
.end annotation


# static fields
.field private static RA:I

.field private static RB:I

.field private static RC:Ljava/lang/String;

.field private static RD:Landroid/os/Bundle;

.field static RE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/e1c/mobile/App$e;",
            ">;"
        }
    .end annotation
.end field

.field static Re:J

.field static Rf:I

.field static Rg:I

.field static final Rh:Lcom/e1c/mobile/App$f;

.field static Ri:Landroid/content/Intent;

.field static Rs:J

.field static Rt:F

.field private static Rz:Z

.field static final synthetic ki:Z

.field static sActivity:Lcom/e1c/mobile/App;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# instance fields
.field Rj:Landroid/database/ContentObserver;

.field Rk:Lcom/e1c/mobile/App$d;

.field Rl:Z

.field Rm:Landroid/view/View;

.field Rn:Landroid/view/ViewGroup;

.field Ro:Lcom/e1c/mobile/UIView;

.field Rp:Z

.field Rq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/e1c/mobile/App$b;",
            ">;"
        }
    .end annotation
.end field

.field Rr:I

.field Ru:Ljava/util/Locale;

.field private Rv:Lcom/e1c/mobile/l;

.field private Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private Rx:Landroid/view/View;

.field private Ry:Lcom/e1c/mobile/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/e1c/mobile/App;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/e1c/mobile/App;->ki:Z

    const/4 v0, -0x1

    sput v0, Lcom/e1c/mobile/App;->Rf:I

    sput v0, Lcom/e1c/mobile/App;->Rg:I

    new-instance v0, Lcom/e1c/mobile/App$f;

    invoke-direct {v0}, Lcom/e1c/mobile/App$f;-><init>()V

    sput-object v0, Lcom/e1c/mobile/App;->Rh:Lcom/e1c/mobile/App$f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/e1c/mobile/App;->RE:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/e1c/mobile/App$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/e1c/mobile/App$1;-><init>(Lcom/e1c/mobile/App;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rj:Landroid/database/ContentObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    return-void
.end method

.method static native NativeAppInit(Ljava/lang/String;)V
.end method

.method static native NativeAppTerm()V
.end method

.method private static native NativeApplicationStateChanged(Z)V
.end method

.method static native NativeLoadLibs()Z
.end method

.method static native NativeOnBack()V
.end method

.method public static native NativeOnDesktopVisibleAreaChanged(III)V
.end method

.method static native NativeOnLocaleChanged()V
.end method

.method static native NativeOnLowMemory()V
.end method

.method static native NativeOnOrientationChanged(I)V
.end method

.method static native NativeOnPermission(JZ)V
.end method

.method static native NativeUnLoadLibs()V
.end method

.method static synthetic a(Lcom/e1c/mobile/App;Lcom/e1c/mobile/l;)Lcom/e1c/mobile/l;
    .locals 0

    iput-object p1, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    return-object p1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/e1c/mobile/App;)V
    .locals 0

    invoke-direct {p0}, Lcom/e1c/mobile/App;->iZ()V

    return-void
.end method

.method static a(JLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.SEND_SMS"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.RECEIVE_SMS"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "android.permission.READ_SMS"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/16 v5, 0x3045

    const/4 v6, 0x1

    move-wide v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method private static a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_6

    array-length v0, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v6, p2, v3

    sget-object v7, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v7, v6}, Lcom/e1c/mobile/App;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v4, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v4, v6}, Lcom/e1c/mobile/App;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-eqz v4, :cond_3

    invoke-static {p2}, Lcom/e1c/mobile/Utils;->c([Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_3

    const-string p5, "App.requestPermission() granted && !Utils.checkSavedPermissions(aPermissions)"

    invoke-static {p5}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    new-instance v9, Lcom/e1c/mobile/App$7;

    invoke-direct {v9, p4, p0, p1}, Lcom/e1c/mobile/App$7;-><init>(IJ)V

    sget-object p5, Lcom/e1c/mobile/App;->RE:Ljava/util/ArrayList;

    invoke-virtual {p5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p5, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    new-instance v0, Lcom/e1c/mobile/App$8;

    move-object v3, v0

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    move-wide v7, p0

    invoke-direct/range {v3 .. v9}, Lcom/e1c/mobile/App$8;-><init>(Ljava/lang/String;[Ljava/lang/String;IJLcom/e1c/mobile/App$e;)V

    invoke-virtual {p5, v0}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    if-nez v4, :cond_5

    new-instance p5, Lcom/e1c/mobile/App$9;

    invoke-direct {p5, p4, p0, p1}, Lcom/e1c/mobile/App$9;-><init>(IJ)V

    sget-object p0, Lcom/e1c/mobile/App;->RE:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    const-string p0, "App.requestPermission() shouldShowRequestPermissionRationale = true"

    invoke-static {p0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    new-instance p1, Lcom/e1c/mobile/App$10;

    invoke-direct {p1, p3, p2, p4}, Lcom/e1c/mobile/App$10;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    const-string p0, "App.requestPermission() shouldShowRequestPermissionRationale = false"

    invoke-static {p0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {p0, p2, p4}, Lcom/e1c/mobile/App;->requestPermissions([Ljava/lang/String;I)V

    :cond_5
    :goto_2
    move v1, v4

    :cond_6
    :goto_3
    return v1
.end method

.method public static a(Landroid/content/Intent;ZI)Z
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/e1c/mobile/App;->Rz:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sput-object p0, Lcom/e1c/mobile/App;->Ri:Landroid/content/Intent;

    sput p2, Lcom/e1c/mobile/App;->RA:I

    sget-object p0, Lcom/e1c/mobile/App;->Rh:Lcom/e1c/mobile/App$f;

    invoke-virtual {p0}, Lcom/e1c/mobile/App$f;->eS()V

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    new-instance p1, Lcom/e1c/mobile/App$6;

    invoke-direct {p1}, Lcom/e1c/mobile/App$6;-><init>()V

    invoke-virtual {p0, p1}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/e1c/mobile/App;->Rh:Lcom/e1c/mobile/App$f;

    invoke-virtual {p0}, Lcom/e1c/mobile/App$f;->jf()V

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {p1, p0}, Lcom/e1c/mobile/App;->startActivity(Landroid/content/Intent;)V

    sput v0, Lcom/e1c/mobile/App;->RB:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity not found: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/e1c/mobile/App;->Rz:Z

    :goto_0
    sget-boolean p0, Lcom/e1c/mobile/App;->Rz:Z

    xor-int/2addr p0, v0

    return p0
.end method

.method static aG(Landroid/view/View;)Z
    .locals 4

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x60000

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic al(Z)Z
    .locals 0

    sput-boolean p0, Lcom/e1c/mobile/App;->Rz:Z

    return p0
.end method

.method static b(JLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.READ_CALL_LOG"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "android.permission.READ_PHONE_STATE"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/16 v5, 0x3046

    const/4 v6, 0x1

    move-wide v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static createSnapshot()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App.createSnapshot() content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static exit()V
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/e1c/mobile/App$5;

    invoke-direct {v1}, Lcom/e1c/mobile/App$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static f(Landroid/app/Activity;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-static {}, Lcom/e1c/mobile/Utils;->getWorkArea()Landroid/graphics/Rect;

    move-result-object v0

    sget-boolean v1, Lcom/e1c/mobile/App;->ki:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v2, v1

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/e1c/mobile/Utils;->chooseSplash(DD)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/e1c/mobile/UIView;->create(J)Lcom/e1c/mobile/IView;

    move-result-object v4

    check-cast v4, Lcom/e1c/mobile/UIView;

    invoke-static {p0, v2}, Lcom/e1c/mobile/Utils;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/e1c/mobile/UIView;->setContentImage(Landroid/graphics/Bitmap;)V

    const/16 p0, 0xd

    iput p0, v4, Lcom/e1c/mobile/UIView;->acB:I

    invoke-virtual {v4, v3, v3, v1, v0}, Lcom/e1c/mobile/UIView;->layout(IIII)V

    return-object v4

    :cond_2
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p0, "There is no logo image."

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, -0x1000000

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p0, -0x1

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/widget/TextView;->layout(IIII)V

    return-object v2
.end method

.method public static getActivityResultData()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->RC:Ljava/lang/String;

    return-object v0
.end method

.method public static getActivityResultExtrasData()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->RD:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getDeviceOrientation()I
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget v0, Lcom/e1c/mobile/App;->Rf:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/e1c/mobile/Utils;->mc()I

    move-result v0

    sput v0, Lcom/e1c/mobile/App;->Rf:I

    :cond_0
    sget v0, Lcom/e1c/mobile/App;->Rf:I

    return v0
.end method

.method public static getElementTypeCode(Ljava/lang/Object;)I
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x6

    return p0

    :cond_6
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_9
    instance-of p0, p0, Landroid/net/Uri;

    if-eqz p0, :cond_a

    const/16 p0, 0xa

    return p0

    :cond_a
    const-class p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/16 p0, 0xb

    return p0

    :cond_b
    const-class p0, Landroid/accounts/Account;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0xc

    return p0

    :cond_c
    const-class p0, Landroid/location/Address;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0xd

    return p0

    :cond_d
    const-class p0, Landroid/location/Location;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/16 p0, 0xe

    return p0

    :cond_e
    const-class p0, [B

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/16 p0, 0x14

    return p0

    :cond_f
    const-class p0, [C

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/16 p0, 0x15

    return p0

    :cond_10
    const-class p0, [D

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x16

    return p0

    :cond_11
    const-class p0, [F

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x17

    return p0

    :cond_12
    const-class p0, [I

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x18

    return p0

    :cond_13
    const-class p0, [J

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/16 p0, 0x19

    return p0

    :cond_14
    const-class p0, [S

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/16 p0, 0x1a

    return p0

    :cond_15
    const-class p0, [Z

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1b

    return p0

    :cond_16
    const-class p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/16 p0, 0x1c

    return p0

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public static getElementValue(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getElementsKeys(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public static hideContextMenu()V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/e1c/mobile/App;->iY()Z

    :cond_0
    return-void
.end method

.method private iZ()V
    .locals 3

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ry:Lcom/e1c/mobile/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/e1c/mobile/m;->dismiss()V

    iput-object v1, p0, Lcom/e1c/mobile/App;->Ry:Lcom/e1c/mobile/m;

    :cond_0
    iget-object v0, p0, Lcom/e1c/mobile/App;->Rx:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/e1c/mobile/App;->Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/e1c/mobile/App;->Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v1, p0, Lcom/e1c/mobile/App;->Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_1
    iput-object v1, p0, Lcom/e1c/mobile/App;->Rx:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public static isInterfaceOrientationSupported(I)Z
    .locals 0
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLowBattery()Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/e1c/mobile/App;->Rs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    :cond_0
    sget-object v2, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/e1c/mobile/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "level"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "scale"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v3, :cond_1

    if-ltz v2, :cond_1

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    sput v3, Lcom/e1c/mobile/App;->Rt:F

    sput-wide v0, Lcom/e1c/mobile/App;->Rs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App.isLowBattery() sLastBatteryPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/e1c/mobile/App;->Rt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    :cond_1
    sget v0, Lcom/e1c/mobile/App;->Rt:F

    const v1, 0x3de147ae    # 0.11f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic jb()I
    .locals 1

    sget v0, Lcom/e1c/mobile/App;->RA:I

    return v0
.end method

.method public static openURLWithType(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "tel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.DIAL"

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.VIEW"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x4000003

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-static {v2, p0}, Lcom/e1c/mobile/ExFileProvider;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    invoke-static {v0, p2, v1}, Lcom/e1c/mobile/App;->a(Landroid/content/Intent;ZI)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static requestCalendarPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.READ_CALENDAR"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.WRITE_CALENDAR"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "permission_request_calendar"

    const-string v1, "IDS_PERMISSION_REQUEST_CALENDAR"

    invoke-static {v0, v1}, Lcom/e1c/mobile/App;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x303b

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestCameraPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "permission_request_camera"

    const-string v1, "IDS_PERMISSION_REQUEST_CAMERA"

    invoke-static {v0, v1}, Lcom/e1c/mobile/App;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3039

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestContactsPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.WRITE_CONTACTS"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "permission_request_contacts"

    const-string v1, "IDS_PERMISSION_REQUEST_CONTACTS"

    invoke-static {v0, v1}, Lcom/e1c/mobile/App;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x303c

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestDialNumberPermission(J)Z
    .locals 8
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_phone"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    aput-object v1, v4, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "IDS_PERMISSION_REQUEST_CALL_PHONE"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    const/16 v6, 0x303f

    const/4 v7, 0x1

    move-wide v2, p0

    invoke-static/range {v2 .. v7}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestGeolocationPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const-string v0, "android.permission.INTERNET"

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    const/4 v1, 0x6

    aput-object v0, v3, v1

    const-string v0, "permission_request_geolocation"

    const-string v1, "IDS_PERMISSION_REQUEST_GEOLOCATION"

    invoke-static {v0, v1}, Lcom/e1c/mobile/App;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x303d

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestHandlePhoneCallsPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_call_log"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/e1c/mobile/App;->b(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v3, v0

    const-string v0, "IDS_PERMISSION_REQUEST_HANDLE_PHONE_CALLS"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3040

    const/4 v6, 0x1

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestMicrophonePermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.RECORD_AUDIO"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "permission_request_microphone"

    const-string v1, "IDS_PERMISSION_REQUEST_MICROPHONE"

    invoke-static {v0, v1}, Lcom/e1c/mobile/App;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x303a

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestReadCallLogPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_call_log"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/e1c/mobile/App;->b(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v3, v0

    const-string v0, "IDS_PERMISSION_REQUEST_READ_CALL_LOG"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3041

    const/4 v6, 0x1

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestReadSMSLogPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_sms"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/e1c/mobile/App;->a(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v3, v0

    const-string v0, "IDS_PERMISSION_REQUEST_READ_SMS_LOG"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3044

    const/4 v6, 0x1

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestReceiveSMSPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_sms"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/e1c/mobile/App;->a(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v3, v0

    const-string v0, "IDS_PERMISSION_REQUEST_RECEIVE_SMS"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3043

    const/4 v6, 0x1

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestSendSMSPermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const-string v0, "permission_request_sms"

    invoke-static {v0}, Lcom/e1c/mobile/App;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/e1c/mobile/App;->a(JLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v3, v0

    const-string v0, "IDS_PERMISSION_REQUEST_SEND_SMS"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3042

    const/4 v6, 0x1

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method static requestStoragePermission(J)Z
    .locals 7
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "IDS_PERMISSION_REQUEST_STORAGE"

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->NativeLoadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x303e

    const/4 v6, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lcom/e1c/mobile/App;->a(J[Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public static setInterfaceOrientation(I)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-static {p0}, Lcom/e1c/mobile/App;->isInterfaceOrientationSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v0, p0}, Lcom/e1c/mobile/App;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public static show(Lcom/e1c/mobile/IView;)V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/e1c/mobile/App;->k(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static startDeviceApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)I
    .locals 2
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    sput v0, Lcom/e1c/mobile/App;->RB:I

    const/4 v1, 0x0

    sput-object v1, Lcom/e1c/mobile/App;->RC:Ljava/lang/String;

    sput-object v1, Lcom/e1c/mobile/App;->RD:Landroid/os/Bundle;

    sget-object v1, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-eqz v1, :cond_9

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x3

    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/4 p0, 0x1

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    if-eqz p2, :cond_5

    if-eqz p0, :cond_5

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-static {p0, p1}, Lcom/e1c/mobile/ExFileProvider;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0, p5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    if-eqz p0, :cond_7

    sget-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-static {p0, p1}, Lcom/e1c/mobile/ExFileProvider;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7
    :goto_3
    if-eqz p6, :cond_8

    invoke-virtual {p6}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_8

    invoke-virtual {v1, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_8
    const/16 p0, 0x3e8

    invoke-static {v1, p7, p0}, Lcom/e1c/mobile/App;->a(Landroid/content/Intent;ZI)Z

    move-result p0

    if-eqz p0, :cond_9

    sget v0, Lcom/e1c/mobile/App;->RB:I

    :cond_9
    return v0
.end method

.method static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v0}, Lcom/e1c/mobile/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    sget-object v2, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-virtual {v2}, Lcom/e1c/mobile/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method a(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 5

    new-instance v0, Lcom/e1c/mobile/App$a;

    invoke-direct {v0, p0, p2}, Lcom/e1c/mobile/App$a;-><init>(Lcom/e1c/mobile/App;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/view/Window;

    const-string v3, "isDestroyed"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v2, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/e1c/mobile/l;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/e1c/mobile/App;->iZ()V

    new-instance v2, Lcom/e1c/mobile/l;

    move-object v3, v0

    check-cast v3, Lcom/e1c/mobile/App$c;

    invoke-direct {v2, p0, v3, p1}, Lcom/e1c/mobile/l;-><init>(Landroid/content/Context;Lcom/e1c/mobile/App$c;Landroid/view/View;)V

    iput-object p1, p0, Lcom/e1c/mobile/App;->Rx:Landroid/view/View;

    new-instance p1, Lcom/e1c/mobile/App$2;

    invoke-direct {p1, p0, v2}, Lcom/e1c/mobile/App$2;-><init>(Lcom/e1c/mobile/App;Lcom/e1c/mobile/l;)V

    iput-object p1, p0, Lcom/e1c/mobile/App;->Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v2}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    new-instance p1, Lcom/e1c/mobile/m;

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    invoke-direct {p1, p0, p2, v0}, Lcom/e1c/mobile/m;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/view/View;)V

    iput-object p1, p0, Lcom/e1c/mobile/App;->Ry:Lcom/e1c/mobile/m;

    iget-object p1, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ry:Lcom/e1c/mobile/m;

    invoke-virtual {p1, v0}, Lcom/e1c/mobile/l;->a(Lcom/e1c/mobile/m;)V

    iget-object p1, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    invoke-virtual {p1}, Lcom/e1c/mobile/l;->invalidate()V

    iget-object p1, p0, Lcom/e1c/mobile/App;->Rx:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rw:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-object v2
.end method

.method public a(Lcom/e1c/mobile/App$b;)V
    .locals 1

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/e1c/mobile/App$b;)V
    .locals 1

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public iX()V
    .locals 1

    new-instance v0, Lcom/e1c/mobile/App$3;

    invoke-direct {v0, p0}, Lcom/e1c/mobile/App$3;-><init>(Lcom/e1c/mobile/App;)V

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method iY()Z
    .locals 1

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/e1c/mobile/l;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method ja()V
    .locals 2

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rx:Landroid/view/View;

    instance-of v1, v0, Lcom/e1c/mobile/UIWeb;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/e1c/mobile/UIWeb;

    invoke-virtual {v0}, Lcom/e1c/mobile/UIWeb;->lV()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/e1c/mobile/App;->iY()Z

    :cond_1
    return-void
.end method

.method k(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/e1c/mobile/UIView;->create(J)Lcom/e1c/mobile/IView;

    move-result-object v0

    check-cast v0, Lcom/e1c/mobile/UIView;

    iput-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/e1c/mobile/UIView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    iput-boolean v1, v0, Lcom/e1c/mobile/UIView;->abq:Z

    const/16 v2, 0x1000

    iput v2, v0, Lcom/e1c/mobile/UIView;->acB:I

    invoke-virtual {v0, v1}, Lcom/e1c/mobile/UIView;->setClipChildren(Z)V

    :cond_1
    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    invoke-virtual {v0}, Lcom/e1c/mobile/UIView;->removeAllViews()V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    invoke-virtual {v0, p1}, Lcom/e1c/mobile/UIView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    :cond_2
    iput-object p1, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/e1c/mobile/App;->Rp:Z

    invoke-static {p1}, Lcom/e1c/mobile/App;->NativeApplicationStateChanged(Z)V

    :cond_3
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    sput p2, Lcom/e1c/mobile/App;->RB:I

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/e1c/mobile/App;->RC:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sput-object p1, Lcom/e1c/mobile/App;->RD:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/e1c/mobile/BluetoothConnection;->jq()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_2

    invoke-static {p1, p2, p3}, Lcom/e1c/mobile/f;->a(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const/16 v0, 0xfa0

    if-ne p1, v0, :cond_3

    invoke-static {p3, p2}, Lcom/e1c/mobile/Biometrics;->a(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    sget-object p1, Lcom/e1c/mobile/App;->Rh:Lcom/e1c/mobile/App$f;

    invoke-virtual {p1}, Lcom/e1c/mobile/App$f;->je()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->iY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/e1c/mobile/App;->NativeOnBack()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/e1c/mobile/App;->f(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    :cond_0
    iget v0, p0, Lcom/e1c/mobile/App;->Rr:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$b;

    invoke-interface {v1}, Lcom/e1c/mobile/App$b;->jd()V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/e1c/mobile/App;->Rr:I

    :cond_2
    iget-object v0, p0, Lcom/e1c/mobile/App;->Ru:Ljava/util/Locale;

    if-eqz v0, :cond_3

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/e1c/mobile/App;->Ru:Ljava/util/Locale;

    invoke-static {}, Lcom/e1c/mobile/App;->NativeOnLocaleChanged()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getIntent()Landroid/content/Intent;

    # Полученный интент кладем в p1
    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onCreate() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # Интересно, свой логгер?
    invoke-static {v0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    # некий Uri из интента
    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    :cond_0
    sget-boolean p1, Lcom/e1c/mobile/UIView;->acu:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/e1c/mobile/App;->Rr:I

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/e1c/mobile/App;->Ru:Ljava/util/Locale;

    sget-object p1, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-nez p1, :cond_2

    invoke-static {}, Lcom/e1c/mobile/UIView;->lT()V

    sput-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    invoke-static {p0}, Lcom/e1c/mobile/App;->f(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    iget-object v0, p1, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    iput-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    iget-object v0, p1, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    sput-object p0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    iget-object v0, p0, Lcom/e1c/mobile/App;->Ro:Lcom/e1c/mobile/UIView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/e1c/mobile/PushNotificationService;->f(Landroid/content/Intent;)V

    sget-object v0, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    invoke-static {v0}, Lcom/e1c/mobile/Starter;->startCmd(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/e1c/mobile/App;->Rm:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/e1c/mobile/App;->setContentView(Landroid/view/View;)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/e1c/mobile/App;->finish()V

    :goto_1
    new-instance p1, Lcom/e1c/mobile/App$d;

    invoke-direct {p1, p0, p0}, Lcom/e1c/mobile/App$d;-><init>(Lcom/e1c/mobile/App;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/e1c/mobile/App;->Rk:Lcom/e1c/mobile/App$d;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rk:Lcom/e1c/mobile/App$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/e1c/mobile/App$d;->disable()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/e1c/mobile/App;->Rk:Lcom/e1c/mobile/App$d;

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/e1c/mobile/App;->Rj:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/e1c/mobile/App$b;

    invoke-interface {v2}, Lcom/e1c/mobile/App$b;->onDestroy()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    if-ne v1, p0, :cond_2

    invoke-static {}, Lcom/e1c/mobile/TelephonyToolsImpl;->kr()V

    invoke-static {}, Lcom/e1c/mobile/CryptoStore;->kr()V

    invoke-static {}, Lcom/e1c/mobile/HTTPConnectionImpl;->kx()V

    sput-object v0, Lcom/e1c/mobile/App;->sActivity:Lcom/e1c/mobile/App;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/e1c/mobile/App;->iY()Z

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-static {}, Lcom/e1c/mobile/App;->NativeOnLowMemory()V

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onNewIntent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/e1c/mobile/PushNotificationService;->NativeFake()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/e1c/mobile/PushNotificationService;->g(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    iget-object p1, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    invoke-static {p1}, Lcom/e1c/mobile/Starter;->startCmd(Ljava/lang/String;)V

    const/4 p1, 0x0

    sput-object p1, Lcom/e1c/mobile/Starter;->aav:Ljava/lang/String;

    :cond_0
    return-void

    :catch_0
    invoke-virtual {p0, p1}, Lcom/e1c/mobile/App;->setIntent(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/e1c/mobile/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$b;

    invoke-interface {v1}, Lcom/e1c/mobile/App$b;->onPause()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Lcom/e1c/mobile/App;->RE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$e;

    invoke-interface {v1}, Lcom/e1c/mobile/App$e;->getRequestId()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-interface {v1}, Lcom/e1c/mobile/App$e;->jc()J

    move-result-wide v2

    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    array-length v4, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, p3, v5

    if-eqz v6, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-static {p2}, Lcom/e1c/mobile/Utils;->d([Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lcom/e1c/mobile/Utils;->e([Ljava/lang/String;)V

    :goto_3
    invoke-static {v2, v3, p1}, Lcom/e1c/mobile/App;->NativeOnPermission(JZ)V

    sget-object p1, Lcom/e1c/mobile/App;->RE:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$b;

    invoke-interface {v1}, Lcom/e1c/mobile/App$b;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$b;

    invoke-interface {v1}, Lcom/e1c/mobile/App$b;->onStart()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/e1c/mobile/App;->Rk:Lcom/e1c/mobile/App$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/e1c/mobile/App$d;->enable()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/e1c/mobile/App;->Rp:Z

    iget-object v1, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/e1c/mobile/App;->NativeApplicationStateChanged(Z)V

    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rk:Lcom/e1c/mobile/App$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/e1c/mobile/App$d;->disable()V

    :cond_0
    iget-object v0, p0, Lcom/e1c/mobile/App;->Rq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/e1c/mobile/App$b;

    invoke-interface {v1}, Lcom/e1c/mobile/App$b;->onStop()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/e1c/mobile/App;->Rp:Z

    iget-object v1, p0, Lcom/e1c/mobile/App;->Rn:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/e1c/mobile/App;->NativeApplicationStateChanged(Z)V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/e1c/mobile/App;->Rv:Lcom/e1c/mobile/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/e1c/mobile/l;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "starter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/e1c/mobile/App;->NativeLoadLibs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1cem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    const-string v0, "ads"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "Exception loading library ads"

    invoke-static {v1}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/e1c/mobile/Utils;->V(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/e1c/mobile/App$4;

    invoke-direct {v1, p0, v0}, Lcom/e1c/mobile/App$4;-><init>(Lcom/e1c/mobile/App;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/e1c/mobile/App;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_2
    :goto_1
    :try_start_5
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :cond_0
    invoke-virtual {p0}, Lcom/e1c/mobile/App;->iX()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    invoke-virtual {p0}, Lcom/e1c/mobile/App;->iX()V

    :goto_3
    return-void
.end method

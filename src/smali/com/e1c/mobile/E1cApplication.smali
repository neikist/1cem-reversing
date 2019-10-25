.class public Lcom/e1c/mobile/E1cApplication;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    # Банально вызов конструктора родителя
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    # Вызов метода родителя. Интересно, почему в конструкторе invoke-direct а тут invoke-super?
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    # Создание анонимного класса и вызов его конструктора. Как видим ниже - Thread$UncaughtExceptionHandler
    new-instance v0, Lcom/e1c/mobile/E1cApplication$1;
    invoke-direct {v0, p0}, Lcom/e1c/mobile/E1cApplication$1;-><init>(Lcom/e1c/mobile/E1cApplication;)V
    #

    # Установка хендлера
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

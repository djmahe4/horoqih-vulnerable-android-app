.class public final Lcom/horoqih/app/MyApp;
.super Landroid/app/Application;
.source "MyApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horoqih/app/MyApp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/horoqih/app/MyApp;",
        "Landroid/app/Application;",
        "()V",
        "onCreate",
        "",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/horoqih/app/MyApp$Companion;

.field public static server:Lcom/horoqih/app/LocalHttpServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/horoqih/app/MyApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/horoqih/app/MyApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/horoqih/app/MyApp;->Companion:Lcom/horoqih/app/MyApp$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 12
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    sget-object v0, Lcom/horoqih/app/MyApp;->Companion:Lcom/horoqih/app/MyApp$Companion;

    new-instance v1, Lcom/horoqih/app/LocalHttpServer;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/horoqih/app/LocalHttpServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/horoqih/app/MyApp$Companion;->setServer(Lcom/horoqih/app/LocalHttpServer;)V

    invoke-virtual {v0}, Lcom/horoqih/app/MyApp$Companion;->getServer()Lcom/horoqih/app/LocalHttpServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horoqih/app/LocalHttpServer;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0
    const-string v1, "CTF_CRASH"
    const-string v2, "CRASH IN APP STARTUP"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

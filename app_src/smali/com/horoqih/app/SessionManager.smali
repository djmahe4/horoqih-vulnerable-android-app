.class public final Lcom/horoqih/app/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horoqih/app/SessionManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\nR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/horoqih/app/SessionManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "getRole",
        "",
        "getUserId",
        "",
        "isLoggedIn",
        "",
        "logout",
        "",
        "saveLogin",
        "userId",
        "role",
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
.field public static final Companion:Lcom/horoqih/app/SessionManager$Companion;

.field private static final KEY_LOGIN:Ljava/lang/String; = "is_logged_in"

.field private static final KEY_ROLE:Ljava/lang/String; = "role"

.field private static final KEY_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/horoqih/app/SessionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/horoqih/app/SessionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/horoqih/app/SessionManager;->Companion:Lcom/horoqih/app/SessionManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "user_session"

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/horoqih/app/SessionManager;->prefs:Landroid/content/SharedPreferences;

    .line 11
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "edit(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final getRole()Ljava/lang/String;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/horoqih/app/SessionManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "role"

    const-string v2, "user"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()I
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/horoqih/app/SessionManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "user_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final isLoggedIn()Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/horoqih/app/SessionManager;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "is_logged_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final logout()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v0, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveLogin(ILjava/lang/String;)V
    .locals 3

    const-string v0, "role"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "user_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object p1, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object p1, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "is_logged_in"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object p1, p0, Lcom/horoqih/app/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

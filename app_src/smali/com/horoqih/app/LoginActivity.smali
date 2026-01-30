.class public final Lcom/horoqih/app/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/horoqih/app/LoginActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method public static synthetic $r8$lambda$A7JjOVkMLmJ6cxGAGBg0yx7gnNI(Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/horoqih/app/LoginActivity;->onCreate$lambda$3$lambda$2(Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Er2xpwm3K7PzFFMIJbEs9KmdC-E(Lcom/horoqih/app/LoginActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/horoqih/app/LoginActivity;->onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/LoginActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q6q0cdANgs5mZwpKJ7wCVXBkY0A(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/horoqih/app/LoginActivity;->onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBcEGxEoGPMUXZs0SKTFITlAanY(Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/horoqih/app/LoginActivity;->onCreate$lambda$3$lambda$2$lambda$0(Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/LoginActivity;Landroid/view/View;)V
    .locals 2

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    move-object p3, p0

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-nez p3, :cond_3

    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 36
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "user="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " pass="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LOGIN"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p3, Ljava/lang/Thread;

    .line 115
    new-instance v0, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V

    .line 38
    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void

    .line 32
    :cond_3
    :goto_2
    check-cast p2, Landroid/content/Context;

    const-string p0, "Enter credentials"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2(Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V
    .locals 2

    const-string v0, "\n                        {\n                          \"username\":\""

    const-string v1, "$username"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$password"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\",\n                          \"password\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"\n                        }\n                        "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 51
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 50
    invoke-virtual {p1, p0, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 54
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "http://127.0.0.1:8083/login"

    .line 55
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 59
    sget-object p1, Lcom/horoqih/app/SSLClient;->INSTANCE:Lcom/horoqih/app/SSLClient;

    invoke-virtual {p1}, Lcom/horoqih/app/SSLClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 66
    :goto_0
    new-instance p1, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V

    invoke-virtual {p2, p1}, Lcom/horoqih/app/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    new-instance p0, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda1;-><init>(Lcom/horoqih/app/LoginActivity;)V

    invoke-virtual {p2, p0}, Lcom/horoqih/app/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$0(Ljava/lang/String;Lcom/horoqih/app/LoginActivity;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 69
    check-cast p1, Landroid/content/Context;

    const-string p0, "No response"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const-string v1, "LOGIN_HTTP"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    check-cast p0, Ljava/lang/CharSequence;

    const-string v1, "success"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v1, Lkotlin/text/Regex;

    const-string v4, "\"userId\":(\\d+)"

    invoke-direct {v1, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {v1, p0, v0, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 85
    :goto_0
    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "\"role\":\"(.*?)\""

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v5, p0, v0, v2, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 87
    invoke-interface {p0}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 88
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "user"

    .line 91
    :goto_1
    new-instance v0, Lcom/horoqih/app/SessionManager;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/horoqih/app/SessionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, p0}, Lcom/horoqih/app/SessionManager;->saveLogin(ILjava/lang/String;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    .line 94
    const-class v3, Lcom/horoqih/app/DashboardActivity;

    .line 93
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "userId"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "role"

    .line 98
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v0}, Lcom/horoqih/app/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p1}, Lcom/horoqih/app/LoginActivity;->finish()V

    goto :goto_2

    .line 104
    :cond_3
    check-cast p1, Landroid/content/Context;

    const-string p0, "Invalid credentials"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/LoginActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    check-cast p0, Landroid/content/Context;

    const-string v0, "Network error"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget p1, Lcom/horoqih/app/R$layout;->activity_login:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/LoginActivity;->setContentView(I)V

    .line 22
    sget p1, Lcom/horoqih/app/R$id;->usernameEt:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 23
    sget v0, Lcom/horoqih/app/R$id;->passwordEt:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 24
    sget v1, Lcom/horoqih/app/R$id;->loginBtn:I

    invoke-virtual {p0, v1}, Lcom/horoqih/app/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 26
    new-instance v2, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, v0, p0}, Lcom/horoqih/app/LoginActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

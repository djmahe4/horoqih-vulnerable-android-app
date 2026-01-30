.class public final Lcom/horoqih/app/ChangePasswordActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangePasswordActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/horoqih/app/ChangePasswordActivity;",
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
.method public static synthetic $r8$lambda$R_NFEOb3W5uqrJPtLHifZ_a1hzQ(Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/horoqih/app/ChangePasswordActivity;->onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/ChangePasswordActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YSNxsHOUOkhVvXtzS78op5MD4Ms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/horoqih/app/ChangePasswordActivity;->onCreate$lambda$3$lambda$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$spUyobcboeufXPqAXbsasVY6q48(Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->onCreate$lambda$3$lambda$2$lambda$0(Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xB5KC5xOHfYyMIpontsoNer7j7A(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ChangePasswordActivity;ILandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/horoqih/app/ChangePasswordActivity;->onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ChangePasswordActivity;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ChangePasswordActivity;ILandroid/view/View;)V
    .locals 6

    const-string p5, "this$0"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 38
    move-object p0, v3

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    if-nez p0, :cond_5

    move-object p0, v4

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    move p0, p1

    goto :goto_1

    :cond_1
    move p0, p2

    :goto_1
    if-nez p0, :cond_5

    move-object p0, v2

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    .line 43
    :cond_3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 44
    check-cast p3, Landroid/content/Context;

    const-string p0, "Password mismatch"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p3, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 48
    :cond_4
    new-instance p0, Ljava/lang/Thread;

    .line 107
    new-instance p1, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda0;

    move-object v0, p1

    move v1, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 39
    :cond_5
    :goto_3
    check-cast p3, Landroid/content/Context;

    const-string p0, "Password required"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p3, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 2

    const-string v0, "$oldPassword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$confirmPassword"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    .line 53
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    move-object p0, p1

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "oldPassword"

    .line 56
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "newPassword"

    .line 59
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "confirmPassword"

    .line 60
    invoke-virtual {v0, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    sget-object p0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object p2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string p3, "application/json"

    invoke-virtual {p2, p3}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 65
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string p2, "http://127.0.0.1:8083/change-password"

    .line 66
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 70
    sget-object p1, Lcom/horoqih/app/SSLClient;->INSTANCE:Lcom/horoqih/app/SSLClient;

    invoke-virtual {p1}, Lcom/horoqih/app/SSLClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 74
    new-instance p1, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p4}, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V

    invoke-virtual {p4, p1}, Lcom/horoqih/app/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    new-instance p0, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda2;

    invoke-direct {p0, p4}, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda2;-><init>(Lcom/horoqih/app/ChangePasswordActivity;)V

    invoke-virtual {p4, p0}, Lcom/horoqih/app/ChangePasswordActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$0(Ljava/lang/String;Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 4

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "success"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 79
    move-object p0, p1

    check-cast p0, Landroid/content/Context;

    const-string v0, "Password updated successfully"

    .line 80
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 78
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 84
    invoke-virtual {p1}, Lcom/horoqih/app/ChangePasswordActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_0
    check-cast p1, Landroid/content/Context;

    const-string p0, "Current password incorrect"

    .line 89
    check-cast p0, Ljava/lang/CharSequence;

    .line 87
    invoke-static {p1, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/ChangePasswordActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    check-cast p0, Landroid/content/Context;

    const-string v0, "Server error"

    .line 101
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 99
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Lcom/horoqih/app/R$layout;->activity_reset_password:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->setContentView(I)V

    .line 19
    sget p1, Lcom/horoqih/app/R$id;->oldPassword:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/EditText;

    .line 20
    sget p1, Lcom/horoqih/app/R$id;->newPassword:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    .line 21
    sget p1, Lcom/horoqih/app/R$id;->confirmPassword:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/EditText;

    .line 22
    sget p1, Lcom/horoqih/app/R$id;->btnSave:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 24
    invoke-virtual {p0}, Lcom/horoqih/app/ChangePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "userId"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 27
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v0, "Session expired"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    invoke-virtual {p0}, Lcom/horoqih/app/ChangePasswordActivity;->finish()V

    return-void

    .line 32
    :cond_0
    new-instance v7, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v4, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/horoqih/app/ChangePasswordActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ChangePasswordActivity;I)V

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

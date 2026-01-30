.class public final Lcom/horoqih/app/ProductActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ProductActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/horoqih/app/ProductActivity;",
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
.method public static synthetic $r8$lambda$QPO9OD0MQevgMu4QeZxYF6PnSEQ(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/horoqih/app/ProductActivity;->onCreate$lambda$3$lambda$2$lambda$0(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdIQVN4m5K1VA9t9J8rzjYAaKUY(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ProductActivity;IILandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/horoqih/app/ProductActivity;->onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ProductActivity;IILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eyVExytcMpwQ46hrBhYiEJ_xD08(IILcom/horoqih/app/ProductActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/horoqih/app/ProductActivity;->onCreate$lambda$3$lambda$2(IILcom/horoqih/app/ProductActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfuzpBS4N9RiRf3hPvCkzphhcdE(Lcom/horoqih/app/ProductActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/horoqih/app/ProductActivity;->onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/ProductActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ProductActivity;IILandroid/view/View;)V
    .locals 1

    const-string p8, "this$0"

    invoke-static {p5, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const-string p8, "getText(...)"

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    .line 34
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 35
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 36
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 37
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_1

    .line 44
    check-cast p5, Landroid/content/Context;

    const-string p0, "Invalid card number"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 48
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    .line 49
    check-cast p5, Landroid/content/Context;

    const-string p0, "Invalid CVV"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 53
    :cond_2
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    new-instance p1, Lkotlin/text/Regex;

    const-string p2, "\\d{2}/\\d{2}"

    invoke-direct {p1, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 54
    check-cast p5, Landroid/content/Context;

    const-string p0, "Expiry must be MM/YY"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 58
    :cond_3
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_4

    .line 59
    check-cast p5, Landroid/content/Context;

    const-string p0, "Invalid Zip Code"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 63
    :cond_4
    new-instance p0, Ljava/lang/Thread;

    .line 118
    new-instance p1, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p6, p7, p5}, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda0;-><init>(IILcom/horoqih/app/ProductActivity;)V

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 39
    :cond_5
    :goto_0
    check-cast p5, Landroid/content/Context;

    const-string p0, "Please fill all fields"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2(IILcom/horoqih/app/ProductActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    .line 68
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "price"

    .line 69
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    sget-object p0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 71
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    .line 74
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "http://127.0.0.1:8083/purchase"

    .line 75
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 79
    sget-object v0, Lcom/horoqih/app/SSLClient;->INSTANCE:Lcom/horoqih/app/SSLClient;

    invoke-virtual {v0}, Lcom/horoqih/app/SSLClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo p0, "{}"

    .line 84
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, p2, p1}, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;-><init>(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V

    invoke-virtual {p2, p0}, Lcom/horoqih/app/ProductActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    new-instance p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda2;

    invoke-direct {p0, p2}, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda2;-><init>(Lcom/horoqih/app/ProductActivity;)V

    invoke-virtual {p2, p0}, Lcom/horoqih/app/ProductActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$0(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V
    .locals 2

    const-string v0, "$res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    .line 88
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "success"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 91
    check-cast p1, Landroid/content/Context;

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "You purchased the product for \u20b9"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 90
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_0
    check-cast p1, Landroid/content/Context;

    const-string p0, "You don\'t have enough balance"

    .line 100
    check-cast p0, Ljava/lang/CharSequence;

    .line 98
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$1(Lcom/horoqih/app/ProductActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    check-cast p0, Landroid/content/Context;

    const-string v0, "Server error"

    .line 112
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 110
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Lcom/horoqih/app/R$layout;->activity_product:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ProductActivity;->setContentView(I)V

    .line 19
    sget p1, Lcom/horoqih/app/R$id;->confirmPaymentBtn:I

    invoke-virtual {p0, p1}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 21
    sget v0, Lcom/horoqih/app/R$id;->etName:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 22
    sget v0, Lcom/horoqih/app/R$id;->etCard:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 23
    sget v0, Lcom/horoqih/app/R$id;->etExpiry:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 24
    sget v0, Lcom/horoqih/app/R$id;->etCvv:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 25
    sget v0, Lcom/horoqih/app/R$id;->etZip:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/ProductActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 27
    invoke-virtual {p0}, Lcom/horoqih/app/ProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userId"

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # CTF HOOK: Intent Tampering
    if-nez v8, :cond_ctf_intent
    check-cast p0, Landroid/content/Context;
    const-string v7, "Intent Tampering"
    invoke-static {p0, v7}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    const/4 v7, 0x0
    :cond_ctf_intent

    .line 28
    invoke-virtual {p0}, Lcom/horoqih/app/ProductActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "price"

    const v7, 0x9c3f

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 30
    new-instance v0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda3;

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v9}, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/horoqih/app/ProductActivity;II)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.class public final Lcom/horoqih/app/DashboardActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DashboardActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0006H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/horoqih/app/DashboardActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "userId",
        "",
        "loadUserFromHttp",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
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


# instance fields
.field private userId:I


# direct methods
.method public static synthetic $r8$lambda$OPblhvUccHvvpjeO9K2Cxd4COHM(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/horoqih/app/DashboardActivity;->onCreate$lambda$0(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U2KWdThqh8jKV_wHwnvvC9JJSFc(Landroid/widget/TextView;Lorg/json/JSONObject;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/horoqih/app/DashboardActivity;->loadUserFromHttp$lambda$4$lambda$3(Landroid/widget/TextView;Lorg/json/JSONObject;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VO6c4nbzm7qZydMltH9iKegxiqM(Lcom/horoqih/app/DashboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/horoqih/app/DashboardActivity;->loadUserFromHttp$lambda$4(Lcom/horoqih/app/DashboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d8Mn8gQ3Xeh4kSQTUqvNtM5XKAw(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/horoqih/app/DashboardActivity;->onCreate$lambda$1(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zR7muFAxptfZ6KGoSvc3NRHNfIc(Lcom/horoqih/app/SessionManager;Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/horoqih/app/DashboardActivity;->onCreate$lambda$2(Lcom/horoqih/app/SessionManager;Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/horoqih/app/DashboardActivity;->userId:I

    return-void
.end method

.method private final loadUserFromHttp()V
    .locals 5

    .line 65
    sget v0, Lcom/horoqih/app/R$id;->txtName:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    sget v1, Lcom/horoqih/app/R$id;->txtRole:I

    invoke-virtual {p0, v1}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    sget v2, Lcom/horoqih/app/R$id;->txtBalance:I

    invoke-virtual {p0, v2}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    new-instance v3, Ljava/lang/Thread;

    .line 103
    new-instance v4, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda4;-><init>(Lcom/horoqih/app/DashboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 69
    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final loadUserFromHttp$lambda$4(Lcom/horoqih/app/DashboardActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const-string v0, "http://127.0.0.1:8083/dashboard?userId="

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    sget-object v1, Lcom/horoqih/app/SSLClient;->INSTANCE:Lcom/horoqih/app/SSLClient;

    invoke-virtual {v1}, Lcom/horoqih/app/SSLClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 75
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/horoqih/app/DashboardActivity;->userId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v1, "DASHBOARD_HTTP"

    .line 83
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;Lorg/json/JSONObject;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Lcom/horoqih/app/DashboardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static final loadUserFromHttp$lambda$4$lambda$3(Landroid/widget/TextView;Lorg/json/JSONObject;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "$json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Role: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "role"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Balance: \u20b9"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "balance"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/horoqih/app/ProductActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "userId"

    .line 40
    iget v1, p0, Lcom/horoqih/app/DashboardActivity;->userId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "price"

    const v1, 0x9c3f

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, p1}, Lcom/horoqih/app/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/horoqih/app/ChangePasswordActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "userId"

    .line 47
    iget v1, p0, Lcom/horoqih/app/DashboardActivity;->userId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, p1}, Lcom/horoqih/app/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/horoqih/app/SessionManager;Lcom/horoqih/app/DashboardActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "$session"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/horoqih/app/SessionManager;->logout()V

    .line 53
    new-instance p0, Landroid/content/Intent;

    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    const-class v0, Lcom/horoqih/app/LoginActivity;

    invoke-direct {p0, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Lcom/horoqih/app/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p1}, Lcom/horoqih/app/DashboardActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 18
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lcom/horoqih/app/SessionManager;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/horoqih/app/SessionManager;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Lcom/horoqih/app/SessionManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/horoqih/app/LoginActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/horoqih/app/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-virtual {p0}, Lcom/horoqih/app/DashboardActivity;->finish()V

    return-void

    .line 28
    :cond_0
    sget v0, Lcom/horoqih/app/R$layout;->activity_dashboard:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/DashboardActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p1}, Lcom/horoqih/app/SessionManager;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/horoqih/app/DashboardActivity;->userId:I

    .line 32
    sget v0, Lcom/horoqih/app/R$id;->productBtn:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    sget v1, Lcom/horoqih/app/R$id;->logoutBtn:I

    invoke-virtual {p0, v1}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 34
    sget v2, Lcom/horoqih/app/R$id;->btnChangePassword:I

    invoke-virtual {p0, v2}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 36
    invoke-direct {p0}, Lcom/horoqih/app/DashboardActivity;->loadUserFromHttp()V

    invoke-direct {p0}, Lcom/horoqih/app/DashboardActivity;->updateCtfScore()V

    .line 38
    new-instance v3, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda0;-><init>(Lcom/horoqih/app/DashboardActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda1;-><init>(Lcom/horoqih/app/DashboardActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance v0, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/horoqih/app/DashboardActivity$$ExternalSyntheticLambda2;-><init>(Lcom/horoqih/app/SessionManager;Lcom/horoqih/app/DashboardActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final updateCtfScore()V
    .locals 3

    sget v0, Lcom/horoqih/app/R$id;->txtCtfScore:I

    invoke-virtual {p0, v0}, Lcom/horoqih/app/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/horoqih/app/CtfManager;->getPoints()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | Flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/horoqih/app/CtfManager;->getFlagCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/15"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/horoqih/app/DashboardActivity;->loadUserFromHttp()V

    invoke-direct {p0}, Lcom/horoqih/app/DashboardActivity;->updateCtfScore()V

    # Check for Quiz
    move-object v0, p0
    check-cast v0, Landroid/content/Context;
    invoke-static {v0}, Lcom/horoqih/app/QuizManager;->shouldShowQuiz(Landroid/content/Context;)Z
    move-result v0
    if-eqz v0, :cond_quiz_done
    new-instance v0, Lcom/horoqih/app/QuizDialogFragment;
    invoke-direct {v0}, Lcom/horoqih/app/QuizDialogFragment;-><init>()V
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    move-result-object v1
    const-string v2, "QuizDialog"
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :cond_quiz_done

    return-void
.end method

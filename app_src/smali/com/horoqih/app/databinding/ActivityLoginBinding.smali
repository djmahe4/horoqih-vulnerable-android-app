.class public final Lcom/horoqih/app/databinding/ActivityLoginBinding;
.super Ljava/lang/Object;
.source "ActivityLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final loginBtn:Landroid/widget/Button;

.field public final passwordEt:Landroid/widget/EditText;

.field private final rootView:Landroid/widget/ScrollView;

.field public final usernameEt:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/horoqih/app/databinding/ActivityLoginBinding;->rootView:Landroid/widget/ScrollView;

    .line 35
    iput-object p2, p0, Lcom/horoqih/app/databinding/ActivityLoginBinding;->loginBtn:Landroid/widget/Button;

    .line 36
    iput-object p3, p0, Lcom/horoqih/app/databinding/ActivityLoginBinding;->passwordEt:Landroid/widget/EditText;

    .line 37
    iput-object p4, p0, Lcom/horoqih/app/databinding/ActivityLoginBinding;->usernameEt:Landroid/widget/EditText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/horoqih/app/databinding/ActivityLoginBinding;
    .locals 4

    .line 67
    sget v0, Lcom/horoqih/app/R$id;->loginBtn:I

    .line 68
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 73
    sget v0, Lcom/horoqih/app/R$id;->passwordEt:I

    .line 74
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 79
    sget v0, Lcom/horoqih/app/R$id;->usernameEt:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 85
    new-instance v0, Lcom/horoqih/app/databinding/ActivityLoginBinding;

    check-cast p0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/horoqih/app/databinding/ActivityLoginBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/horoqih/app/databinding/ActivityLoginBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/horoqih/app/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/horoqih/app/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/horoqih/app/databinding/ActivityLoginBinding;
    .locals 2

    .line 54
    sget v0, Lcom/horoqih/app/R$layout;->activity_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/horoqih/app/databinding/ActivityLoginBinding;->bind(Landroid/view/View;)Lcom/horoqih/app/databinding/ActivityLoginBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/horoqih/app/databinding/ActivityLoginBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/horoqih/app/databinding/ActivityLoginBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

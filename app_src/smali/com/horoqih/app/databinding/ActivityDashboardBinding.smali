.class public final Lcom/horoqih/app/databinding/ActivityDashboardBinding;
.super Ljava/lang/Object;
.source "ActivityDashboardBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnChangePassword:Landroid/widget/Button;

.field public final logoutBtn:Landroid/widget/Button;

.field public final productBtn:Landroid/widget/Button;

.field public final productImage:Landroid/widget/ImageView;

.field public final profileImage:Lde/hdodenhof/circleimageview/CircleImageView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final txtBalance:Landroid/widget/TextView;

.field public final txtName:Landroid/widget/TextView;

.field public final txtRole:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->rootView:Landroid/widget/ScrollView;

    .line 54
    iput-object p2, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->btnChangePassword:Landroid/widget/Button;

    .line 55
    iput-object p3, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->logoutBtn:Landroid/widget/Button;

    .line 56
    iput-object p4, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->productBtn:Landroid/widget/Button;

    .line 57
    iput-object p5, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->productImage:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->profileImage:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 59
    iput-object p7, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->txtBalance:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->txtName:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->txtRole:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/horoqih/app/databinding/ActivityDashboardBinding;
    .locals 12

    .line 91
    sget v0, Lcom/horoqih/app/R$id;->btnChangePassword:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 97
    sget v0, Lcom/horoqih/app/R$id;->logoutBtn:I

    .line 98
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    .line 103
    sget v0, Lcom/horoqih/app/R$id;->productBtn:I

    .line 104
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 109
    sget v0, Lcom/horoqih/app/R$id;->productImage:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 115
    sget v0, Lcom/horoqih/app/R$id;->profileImage:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lde/hdodenhof/circleimageview/CircleImageView;

    if-eqz v8, :cond_0

    .line 121
    sget v0, Lcom/horoqih/app/R$id;->txtBalance:I

    .line 122
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 127
    sget v0, Lcom/horoqih/app/R$id;->txtName:I

    .line 128
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 133
    sget v0, Lcom/horoqih/app/R$id;->txtRole:I

    .line 134
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 139
    new-instance v0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/horoqih/app/databinding/ActivityDashboardBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/horoqih/app/databinding/ActivityDashboardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/horoqih/app/databinding/ActivityDashboardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/horoqih/app/databinding/ActivityDashboardBinding;
    .locals 2

    .line 78
    sget v0, Lcom/horoqih/app/R$layout;->activity_dashboard:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->bind(Landroid/view/View;)Lcom/horoqih/app/databinding/ActivityDashboardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/horoqih/app/databinding/ActivityDashboardBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method

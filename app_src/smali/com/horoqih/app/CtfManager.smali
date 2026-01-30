.class public Lcom/horoqih/app/CtfManager;
.super Ljava/lang/Object;
.source "CtfManager.java"

.field private static flagCount:I = 0x0
.field private static points:I = 0x0
.field private static failedAttempts:I = 0x0
.field private static solvedFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field private static startTime:J

# Static initializer
.method static constructor <clinit>()V
    .locals 3
    new-instance v0, Ljava/util/HashSet;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    sput-object v0, Lcom/horoqih/app/CtfManager;->solvedFlags:Ljava/util/HashSet;
    const/4 v0, 0x0
    sput v0, Lcom/horoqih/app/CtfManager;->flagCount:I
    sput v0, Lcom/horoqih/app/CtfManager;->points:I
    sput v0, Lcom/horoqih/app/CtfManager;->failedAttempts:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v1
    sput-wide v1, Lcom/horoqih/app/CtfManager;->startTime:J
    return-void
.end method

.method public static synchronized getFlagCount()I
    .locals 1
    sget v0, Lcom/horoqih/app/CtfManager;->flagCount:I
    return v0
.end method

.method public static synchronized getPoints()I
    .locals 1
    sget v0, Lcom/horoqih/app/CtfManager;->points:I
    return v0
.end method

.method public static synchronized incrementFailedLogin(Landroid/content/Context;)V
    .locals 2
    sget v0, Lcom/horoqih/app/CtfManager;->failedAttempts:I
    add-int/lit8 v0, v0, 0x1
    sput v0, Lcom/horoqih/app/CtfManager;->failedAttempts:I
    
    const/4 v1, 0x5
    if-le v0, v1, :cond_limit
    const-string v0, "No Rate Limiting"
    invoke-static {p0, v0}, Lcom/horoqih/app/CtfManager;->addScore(Landroid/content/Context;Ljava/lang/String;)V
    :cond_limit
    return-void
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v1, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;
    invoke-direct {v1, p0, p1}, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method

.method public static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    const/4 v0, 0x1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    return-void
.end method

.method public static synchronized addScore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/horoqih/app/CtfManager;->solvedFlags:Ljava/util/HashSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/horoqih/app/CtfManager;->solvedFlags:Ljava/util/HashSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/horoqih/app/CtfManager;->flagCount:I
    add-int/lit8 v0, v0, 0x1
    sput v0, Lcom/horoqih/app/CtfManager;->flagCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sget-wide v2, Lcom/horoqih/app/CtfManager;->startTime:J
    sub-long/2addr v0, v2
    const-wide/32 v2, 0xea60
    div-long/2addr v0, v2
    long-to-int v2, v0
    shr-int/lit8 v2, v2, 0x1
    
    const/16 v3, 0x64
    sub-int/2addr v3, v2
    
    const/16 v4, 0x32
    if-ge v3, v4, :cond_calc
    move v3, v4
    :cond_calc
    
    sget v5, Lcom/horoqih/app/CtfManager;->points:I
    add-int/2addr v5, v3
    sput v5, Lcom/horoqih/app/CtfManager;->points:I

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "🚩 FLAG FOUND: "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " (+"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " pts)"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/horoqih/app/CtfManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synchronized addPassiveScore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/horoqih/app/CtfManager;->solvedFlags:Ljava/util/HashSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/horoqih/app/CtfManager;->solvedFlags:Ljava/util/HashSet;
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/horoqih/app/CtfManager;->flagCount:I
    add-int/lit8 v0, v0, 0x1
    sput v0, Lcom/horoqih/app/CtfManager;->flagCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    sget-wide v2, Lcom/horoqih/app/CtfManager;->startTime:J
    sub-long/2addr v0, v2
    const-wide/32 v2, 0xea60
    div-long/2addr v0, v2
    long-to-int v2, v0
    shr-int/lit8 v2, v2, 0x1
    
    const/16 v3, 0x64
    sub-int/2addr v3, v2
    
    const/16 v4, 0x32
    if-ge v3, v4, :cond_calc
    move v3, v4
    :cond_calc
    
    div-int/lit8 v3, v3, 0x2
    
    sget v5, Lcom/horoqih/app/CtfManager;->points:I
    add-int/2addr v5, v3
    sput v5, Lcom/horoqih/app/CtfManager;->points:I

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "🚩 FLAG FOUND: "
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " (+"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v2, " pts)"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/horoqih/app/CtfManager;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

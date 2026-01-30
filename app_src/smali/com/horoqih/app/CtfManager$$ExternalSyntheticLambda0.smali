.class public final synthetic Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field public final synthetic f$0:Landroid/content/Context;
.field public final synthetic f$1:Ljava/lang/String;

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;
    iput-object p2, p0, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;
    return-void
.end method

.method public final run()V
    .locals 2
    iget-object v0, p0, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;
    iget-object v1, p0, Lcom/horoqih/app/CtfManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/horoqih/app/CtfManager;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;)V
    return-void
.end method

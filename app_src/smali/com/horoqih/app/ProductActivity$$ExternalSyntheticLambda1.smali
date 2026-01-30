.class public final synthetic Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONObject;

.field public final synthetic f$1:Lcom/horoqih/app/ProductActivity;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$0:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$1:Lcom/horoqih/app/ProductActivity;

    iput p3, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$0:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$1:Lcom/horoqih/app/ProductActivity;

    iget v2, p0, Lcom/horoqih/app/ProductActivity$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/horoqih/app/ProductActivity;->$r8$lambda$QPO9OD0MQevgMu4QeZxYF6PnSEQ(Lorg/json/JSONObject;Lcom/horoqih/app/ProductActivity;I)V

    return-void
.end method

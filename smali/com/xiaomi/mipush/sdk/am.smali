.class final Lcom/xiaomi/mipush/sdk/am;
.super Ljava/lang/Object;
.source "MiPushClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/am;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 150
    invoke-static {}, Lcom/xiaomi/mipush/sdk/al;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/am;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/am;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/al;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ar;)V

    return-void
.end method

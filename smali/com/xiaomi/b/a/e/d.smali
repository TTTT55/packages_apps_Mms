.class public final Lcom/xiaomi/b/a/e/d;
.super Ljava/lang/Object;
.source "Network.java"


# instance fields
.field public a:I

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "resCode = %1$d, headers = %2$s"

    const/4 v1, 0x2

    .line 506
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/b/a/e/d;->a:I

    .line 507
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/b/a/e/d;->b:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 506
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lb/aa;
.super Lb/z;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z<",
        "Ljava/lang/Iterable<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lb/z;


# direct methods
.method constructor <init>(Lb/z;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lb/aa;->a:Lb/z;

    invoke-direct {p0}, Lb/z;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lb/at;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    check-cast p2, Ljava/lang/Iterable;

    if-eqz p2, :cond_0

    .line 1037
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1038
    iget-object v1, p0, Lb/aa;->a:Lb/z;

    invoke-virtual {v1, p1, v0}, Lb/z;->a(Lb/at;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

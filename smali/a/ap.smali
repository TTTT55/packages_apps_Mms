.class public final La/ap;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# instance fields
.field private final a:Lokio/ByteString;

.field private b:La/an;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/ap;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, La/ao;->a:La/an;

    iput-object v0, p0, La/ap;->b:La/an;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/ap;->c:Ljava/util/List;

    .line 289
    invoke-static {p1}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    iput-object p1, p0, La/ap;->a:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final a()La/ao;
    .locals 4

    .line 336
    iget-object v0, p0, La/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, La/ao;

    iget-object v1, p0, La/ap;->a:Lokio/ByteString;

    iget-object v2, p0, La/ap;->b:La/an;

    iget-object v3, p0, La/ap;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, La/ao;-><init>(Lokio/ByteString;La/an;Ljava/util/List;)V

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(La/ag;La/az;)La/ap;
    .locals 0
    .param p1    # La/ag;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 314
    invoke-static {p1, p2}, La/aq;->a(La/ag;La/az;)La/aq;

    move-result-object p1

    invoke-virtual {p0, p1}, La/ap;->a(La/aq;)La/ap;

    move-result-object p1

    return-object p1
.end method

.method public final a(La/an;)La/ap;
    .locals 3

    if-eqz p1, :cond_1

    .line 300
    invoke-virtual {p1}, La/an;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iput-object p1, p0, La/ap;->b:La/an;

    return-object p0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart != "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(La/aq;)La/ap;
    .locals 1

    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, La/ap;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 329
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
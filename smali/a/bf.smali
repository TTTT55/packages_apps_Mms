.class public final La/bf;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field final a:La/a;

.field private b:Ljava/net/Proxy;

.field private c:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor <init>(La/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 52
    iput-object p1, p0, La/bf;->a:La/a;

    .line 53
    iput-object p2, p0, La/bf;->b:Ljava/net/Proxy;

    .line 54
    iput-object p3, p0, La/bf;->c:Ljava/net/InetSocketAddress;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "inetSocketAddress == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "proxy == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()La/a;
    .locals 1

    .line 58
    iget-object v0, p0, La/bf;->a:La/a;

    return-object v0
.end method

.method public final b()Ljava/net/Proxy;
    .locals 1

    .line 68
    iget-object v0, p0, La/bf;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public final c()Ljava/net/InetSocketAddress;
    .locals 1

    .line 72
    iget-object v0, p0, La/bf;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 80
    iget-object v0, p0, La/bf;->a:La/a;

    iget-object v0, v0, La/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/bf;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    instance-of v0, p1, La/bf;

    if-eqz v0, :cond_0

    check-cast p1, La/bf;

    iget-object v0, p1, La/bf;->a:La/a;

    iget-object v1, p0, La/bf;->a:La/a;

    .line 85
    invoke-virtual {v0, v1}, La/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, La/bf;->b:Ljava/net/Proxy;

    iget-object v1, p0, La/bf;->b:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v0, v1}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, La/bf;->c:Ljava/net/InetSocketAddress;

    iget-object v0, p0, La/bf;->c:Ljava/net/InetSocketAddress;

    .line 87
    invoke-virtual {p1, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 92
    iget-object v0, p0, La/bf;->a:La/a;

    invoke-virtual {v0}, La/a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 93
    iget-object v1, p0, La/bf;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, La/bf;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/bf;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

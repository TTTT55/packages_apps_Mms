.class final La/a/e/af;
.super Ljava/lang/Object;
.source "Http2Writer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lokio/BufferedSink;

.field private final c:Z

.field private final d:Lokio/Buffer;

.field private e:I

.field private f:Z

.field private g:La/a/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, La/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/e/af;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSink;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    .line 59
    iput-boolean p2, p0, La/a/e/af;->c:Z

    .line 60
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, La/a/e/af;->d:Lokio/Buffer;

    .line 61
    new-instance p1, La/a/e/f;

    iget-object p2, p0, La/a/e/af;->d:Lokio/Buffer;

    invoke-direct {p1, p2}, La/a/e/f;-><init>(Lokio/Buffer;)V

    iput-object p1, p0, La/a/e/af;->g:La/a/e/f;

    const/16 p1, 0x4000

    .line 62
    iput p1, p0, La/a/e/af;->e:I

    return-void
.end method

.method private a(IIBB)V
    .locals 3

    .line 266
    sget-object v0, La/a/e/af;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, La/a/e/af;->a:Ljava/util/logging/Logger;

    invoke-static {v1, p1, p2, p3, p4}, La/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget v0, p0, La/a/e/af;->e:I

    const/4 v2, 0x1

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-static {v0, p2}, La/a/e/af;->a(Lokio/BufferedSink;I)V

    .line 272
    iget-object p2, p0, La/a/e/af;->b:Lokio/BufferedSink;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 273
    iget-object p2, p0, La/a/e/af;->b:Lokio/BufferedSink;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 274
    iget-object p2, p0, La/a/e/af;->b:Lokio/BufferedSink;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    return-void

    .line 270
    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "reserved bit set: %s"

    invoke-static {p1, p2}, La/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x2

    .line 268
    new-array p1, p1, [Ljava/lang/Object;

    iget p3, p0, La/a/e/af;->e:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {p2, p1}, La/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method

.method private static a(Lokio/BufferedSink;I)V
    .locals 1

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 283
    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 284
    invoke-interface {p0, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    and-int/lit16 p1, p1, 0xff

    .line 285
    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method

.method private b(IJ)V
    .locals 6

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 290
    iget v2, p0, La/a/e/af;->e:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr p2, v3

    const/16 v5, 0x9

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_1
    invoke-direct {p0, p1, v2, v5, v0}, La/a/e/af;->a(IIBB)V

    .line 293
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    iget-object v1, p0, La/a/e/af;->d:Lokio/Buffer;

    invoke-interface {v0, v1, v3, v4}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_2

    .line 67
    iget-boolean v0, p0, La/a/e/af;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    sget-object v0, La/a/e/af;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, La/a/e/af;->a:Ljava/util/logging/Logger;

    const-string v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, La/a/e/g;->a:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    sget-object v1, La/a/e/g;->a:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 72
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 66
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IJ)V
    .locals 4

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x4

    const/16 v2, 0x8

    .line 260
    invoke-direct {p0, p1, v0, v2, v1}, La/a/e/af;->a(IIBB)V

    .line 261
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    long-to-int p2, p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 262
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v0, 0x1

    .line 254
    new-array v0, v0, [Ljava/lang/Object;

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    .line 254
    invoke-static {p1, v0}, La/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 252
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 251
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILa/a/e/b;)V
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_1

    .line 145
    iget v0, p2, La/a/e/b;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, v0, v1, v2}, La/a/e/af;->a(IIBB)V

    .line 151
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    iget p2, p2, La/a/e/b;->g:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 152
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 143
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ILa/a/e/b;[B)V
    .locals 3

    monitor-enter p0

    .line 232
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_2

    .line 233
    iget v0, p2, La/a/e/b;->g:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 234
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 238
    invoke-direct {p0, v2, v0, v1, v2}, La/a/e/af;->a(IIBB)V

    .line 239
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 240
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    iget p2, p2, La/a/e/b;->g:I

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 241
    array-length p1, p3

    if-lez p1, :cond_0

    .line 242
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 244
    :cond_0
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 233
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, La/a/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 232
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 231
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(La/a/e/al;)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_1

    .line 78
    iget v0, p0, La/a/e/af;->e:I

    invoke-virtual {p1, v0}, La/a/e/al;->d(I)I

    move-result v0

    iput v0, p0, La/a/e/af;->e:I

    .line 79
    invoke-virtual {p1}, La/a/e/al;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, La/a/e/af;->g:La/a/e/f;

    invoke-virtual {p1}, La/a/e/al;->b()I

    move-result p1

    invoke-virtual {v0, p1}, La/a/e/f;->a(I)V

    :cond_0
    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, v1, v1, p1, v0}, La/a/e/af;->a(IIBB)V

    .line 87
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 77
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZII)V
    .locals 3

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x6

    .line 216
    invoke-direct {p0, v0, v1, v2, p1}, La/a/e/af;->a(IIBB)V

    .line 217
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 218
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1, p3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    .line 219
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 210
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "La/a/e/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_4

    .line 1298
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_3

    .line 1299
    iget-object v0, p0, La/a/e/af;->g:La/a/e/f;

    invoke-virtual {v0, p3}, La/a/e/f;->a(Ljava/util/List;)V

    .line 1301
    iget-object p3, p0, La/a/e/af;->d:Lokio/Buffer;

    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 1302
    iget p3, p0, La/a/e/af;->e:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 p1, v5, 0x1

    int-to-byte v5, p1

    :cond_1
    const/4 p1, 0x1

    .line 1306
    invoke-direct {p0, p2, p3, p1, v5}, La/a/e/af;->a(IIBB)V

    .line 1307
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    iget-object p3, p0, La/a/e/af;->d:Lokio/Buffer;

    invoke-interface {p1, p3, v2, v3}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    if-lez v4, :cond_2

    sub-long/2addr v0, v2

    .line 1309
    invoke-direct {p0, p2, v0, v1}, La/a/e/af;->b(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_2
    monitor-exit p0

    return-void

    .line 1298
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(ZILokio/Buffer;I)V
    .locals 2

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2178
    invoke-direct {p0, p2, p4, v0, p1}, La/a/e/af;->a(IIBB)V

    if-lez p4, :cond_0

    .line 2180
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 169
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 119
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(La/a/e/al;)V
    .locals 4

    monitor-enter p0

    .line 186
    :try_start_0
    iget-boolean v0, p0, La/a/e/af;->f:Z

    if-nez v0, :cond_4

    .line 187
    invoke-virtual {p1}, La/a/e/al;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0, v2, v0, v1, v2}, La/a/e/af;->a(IIBB)V

    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    .line 193
    invoke-virtual {p1, v2}, La/a/e/al;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    if-ne v2, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    move v0, v2

    .line 200
    :goto_1
    iget-object v3, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->writeShort(I)Lokio/BufferedSink;

    .line 201
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-virtual {p1, v2}, La/a/e/al;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeInt(I)Lokio/BufferedSink;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    :cond_3
    iget-object p1, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    .line 186
    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 157
    iget v0, p0, La/a/e/af;->e:I

    return v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 278
    :try_start_0
    iput-boolean v0, p0, La/a/e/af;->f:Z

    .line 279
    iget-object v0, p0, La/a/e/af;->b:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 277
    monitor-exit p0

    throw v0
.end method

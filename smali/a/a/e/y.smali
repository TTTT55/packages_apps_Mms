.class final La/a/e/y;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lokio/BufferedSource;

.field private final c:La/a/e/z;

.field private final d:Z

.field private e:La/a/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, La/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/a/e/y;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lokio/BufferedSource;Z)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    .line 72
    iput-boolean p2, p0, La/a/e/y;->d:Z

    .line 73
    new-instance p1, La/a/e/z;

    iget-object p2, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-direct {p1, p2}, La/a/e/z;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, La/a/e/y;->c:La/a/e/z;

    .line 74
    new-instance p1, La/a/e/e;

    iget-object p2, p0, La/a/e/y;->c:La/a/e/z;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, La/a/e/e;-><init>(ILokio/Source;)V

    iput-object p1, p0, La/a/e/y;->e:La/a/e/e;

    return-void
.end method

.method private static a(IBS)I
    .locals 1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_1
    const/4 p1, 0x2

    .line 408
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method static a(Lokio/BufferedSource;)I
    .locals 2

    .line 399
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 400
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 401
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(ISBI)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "La/a/e/c;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, La/a/e/y;->c:La/a/e/z;

    iget-object v1, p0, La/a/e/y;->c:La/a/e/z;

    iput p1, v1, La/a/e/z;->d:I

    iput p1, v0, La/a/e/z;->a:I

    .line 190
    iget-object p1, p0, La/a/e/y;->c:La/a/e/z;

    iput-short p2, p1, La/a/e/z;->e:S

    .line 191
    iget-object p1, p0, La/a/e/y;->c:La/a/e/z;

    iput-byte p3, p1, La/a/e/z;->b:B

    .line 192
    iget-object p1, p0, La/a/e/y;->c:La/a/e/z;

    iput p4, p1, La/a/e/z;->c:I

    .line 196
    iget-object p1, p0, La/a/e/y;->e:La/a/e/e;

    invoke-virtual {p1}, La/a/e/e;->a()V

    .line 197
    iget-object p1, p0, La/a/e/y;->e:La/a/e/e;

    invoke-virtual {p1}, La/a/e/e;->b()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(La/a/e/aa;I)V
    .locals 0

    .line 226
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    .line 229
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    return-void
.end method


# virtual methods
.method public final a(La/a/e/aa;)V
    .locals 6

    .line 78
    iget-boolean v0, p0, La/a/e/y;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0, v2, p1}, La/a/e/y;->a(ZLa/a/e/aa;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    invoke-static {v0, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 85
    :cond_1
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    sget-object v0, La/a/e/g;->a:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p1

    .line 86
    sget-object v0, La/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, La/a/e/y;->a:Ljava/util/logging/Logger;

    const-string v3, "<< CONNECTION %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, La/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 87
    :cond_2
    sget-object v0, La/a/e/g;->a:Lokio/ByteString;

    invoke-virtual {v0, p1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 88
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final a(ZLa/a/e/aa;)Z
    .locals 10

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object v1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-static {v1}, La/a/e/y;->a(Lokio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_25

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_25

    .line 115
    iget-object v4, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x4

    if-eqz p1, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 119
    :cond_1
    :goto_0
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readByte()B

    move-result p1

    int-to-byte p1, p1

    .line 120
    iget-object v6, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    .line 121
    sget-object v8, La/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, La/a/e/y;->a:Ljava/util/logging/Logger;

    invoke-static {v2, v6, v1, v4, p1}, La/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    const/16 v8, 0x8

    packed-switch v4, :pswitch_data_0

    .line 162
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_6

    :pswitch_0
    if-ne v1, v5, :cond_4

    .line 2336
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    int-to-long v3, p1

    const-wide/32 v7, 0x7fffffff

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v3, v7

    if-eqz p1, :cond_3

    .line 2338
    invoke-interface {p2, v6, v3, v4}, La/a/e/aa;->a(IJ)V

    goto/16 :goto_6

    .line 2337
    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2335
    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1
    if-lt v1, v8, :cond_8

    if-nez v6, :cond_7

    .line 2319
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    .line 2320
    iget-object v3, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    sub-int/2addr v1, v8

    .line 2322
    invoke-static {v3}, La/a/e/b;->a(I)La/a/e/b;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2326
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez v1, :cond_5

    .line 2328
    iget-object v0, p0, La/a/e/y;->b:Lokio/BufferedSource;

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 2330
    :cond_5
    invoke-interface {p2, p1, v0}, La/a/e/aa;->a(ILokio/ByteString;)V

    goto/16 :goto_6

    .line 2324
    :cond_6
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2318
    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2317
    :cond_8
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_2
    if-ne v1, v8, :cond_b

    if-nez v6, :cond_a

    .line 2309
    iget-object v1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 2310
    iget-object v3, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 2312
    :cond_9
    invoke-interface {p2, v0, v1, v3}, La/a/e/aa;->a(ZII)V

    goto/16 :goto_6

    .line 2308
    :cond_a
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2307
    :cond_b
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_3
    if-eqz v6, :cond_d

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_c

    .line 2297
    iget-object v0, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2298
    :cond_c
    iget-object v3, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    .line 2300
    invoke-static {v1, p1, v0}, La/a/e/y;->a(IBS)I

    move-result v1

    .line 2301
    invoke-direct {p0, v1, v0, p1, v6}, La/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object p1

    .line 2302
    invoke-interface {p2, v3, p1}, La/a/e/aa;->a(ILjava/util/List;)V

    goto/16 :goto_6

    .line 2295
    :cond_d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_4
    if-nez v6, :cond_16

    and-int/2addr p1, v2

    if-eqz p1, :cond_f

    if-nez v1, :cond_e

    goto/16 :goto_6

    .line 2249
    :cond_e
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2254
    :cond_f
    rem-int/lit8 p1, v1, 0x6

    if-nez p1, :cond_15

    .line 2255
    new-instance p1, La/a/e/al;

    invoke-direct {p1}, La/a/e/al;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_14

    .line 2257
    iget-object v6, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    move-result v6

    .line 2258
    iget-object v7, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_5
    if-lt v7, v3, :cond_10

    const v8, 0xffffff

    if-gt v7, v8, :cond_10

    goto :goto_2

    .line 2279
    :cond_10
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6
    const/4 v6, 0x7

    if-ltz v7, :cond_11

    goto :goto_2

    .line 2274
    :cond_11
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_7
    const/4 v6, 0x4

    goto :goto_2

    :pswitch_8
    if-eqz v7, :cond_13

    if-ne v7, v2, :cond_12

    goto :goto_2

    .line 2265
    :cond_12
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2287
    :cond_13
    :goto_2
    :pswitch_9
    invoke-virtual {p1, v6, v7}, La/a/e/al;->a(II)La/a/e/al;

    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    .line 2289
    :cond_14
    invoke-interface {p2, v0, p1}, La/a/e/aa;->a(ZLa/a/e/al;)V

    goto/16 :goto_6

    .line 2254
    :cond_15
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2247
    :cond_16
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_a
    if-ne v1, v5, :cond_19

    if-eqz v6, :cond_18

    .line 2237
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->readInt()I

    move-result p1

    .line 2238
    invoke-static {p1}, La/a/e/b;->a(I)La/a/e/b;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 2242
    invoke-interface {p2, v6, v1}, La/a/e/aa;->a(ILa/a/e/b;)V

    goto/16 :goto_6

    .line 2240
    :cond_17
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p1, p2}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2236
    :cond_18
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2235
    :cond_19
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_b
    const/4 p1, 0x5

    if-ne v1, p1, :cond_1b

    if-eqz v6, :cond_1a

    .line 2222
    invoke-direct {p0, p2, v6}, La/a/e/y;->a(La/a/e/aa;I)V

    goto/16 :goto_6

    .line 2221
    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 2220
    :cond_1b
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_c
    if-eqz v6, :cond_1f

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_3

    :cond_1c
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_1d

    .line 2173
    iget-object v0, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_1d
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_1e

    .line 2176
    invoke-direct {p0, p2, v6}, La/a/e/y;->a(La/a/e/aa;I)V

    add-int/lit8 v1, v1, -0x5

    .line 2180
    :cond_1e
    invoke-static {v1, p1, v0}, La/a/e/y;->a(IBS)I

    move-result v1

    .line 2182
    invoke-direct {p0, v1, v0, p1, v6}, La/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object p1

    .line 2184
    invoke-interface {p2, v3, v6, p1}, La/a/e/aa;->a(ZILjava/util/List;)V

    goto :goto_6

    .line 2169
    :cond_1f
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_d
    if-eqz v6, :cond_24

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    goto :goto_4

    :cond_20
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_5

    :cond_21
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_23

    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_22

    .line 1211
    iget-object v0, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 1212
    :cond_22
    invoke-static {v1, p1, v0}, La/a/e/y;->a(IBS)I

    move-result p1

    .line 1214
    iget-object v1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {p2, v3, v6, v1, p1}, La/a/e/aa;->a(ZILokio/BufferedSource;I)V

    .line 1215
    iget-object p1, p0, La/a/e/y;->b:Lokio/BufferedSource;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_6

    .line 1208
    :cond_23
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 1202
    :cond_24
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :goto_6
    return v2

    .line 113
    :cond_25
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, La/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    .line 342
    iget-object v0, p0, La/a/e/y;->b:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

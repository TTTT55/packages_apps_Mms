.class public final Lcom/xiaomi/push/service/bx;
.super Ljava/lang/Object;
.source "TinyDataHelper.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xiaomi/push/service/bx;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    sput-object v0, Lcom/xiaomi/push/service/bx;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/bx;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/xiaomi/push/service/bx;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/bx;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/xiaomi/push/service/bx;->c:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    sget-object v2, Lcom/xiaomi/push/service/bx;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 43
    sput-object v1, Lcom/xiaomi/push/service/bx;->c:Ljava/lang/String;

    .line 45
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/push/service/bx;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/k/a/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/k/a/z;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "requests can not be null in TinyDataHelper.transToThriftObj()."

    .line 60
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->d(Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "requests.length is 0 in TinyDataHelper.transToThriftObj()."

    .line 65
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->d(Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v1, Lcom/xiaomi/k/a/d;

    invoke-direct {v1}, Lcom/xiaomi/k/a/d;-><init>()V

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 74
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/k/a/e;

    if-eqz v5, :cond_5

    .line 80
    invoke-static {v5}, Lcom/xiaomi/k/a/aj;->a(Lorg/apache/a/a;)[B

    move-result-object v6

    array-length v6, v6

    if-le v6, p3, :cond_2

    .line 82
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TinyData is too big, ignore upload request item:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    iget-object v5, v5, Lcom/xiaomi/k/a/e;->h:Ljava/lang/String;

    .line 82
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/b/a/c/b;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int v7, v4, v6

    if-le v7, p3, :cond_3

    .line 88
    new-instance v4, Lcom/xiaomi/k/a/z;

    const-string v7, "-1"

    invoke-direct {v4, v7, v2}, Lcom/xiaomi/k/a/z;-><init>(Ljava/lang/String;Z)V

    .line 1381
    iput-object p1, v4, Lcom/xiaomi/k/a/z;->e:Ljava/lang/String;

    .line 2251
    iput-object p2, v4, Lcom/xiaomi/k/a/z;->b:Ljava/lang/String;

    .line 91
    sget-object v7, Lcom/xiaomi/k/a/k;->m:Lcom/xiaomi/k/a/k;

    iget-object v7, v7, Lcom/xiaomi/k/a/k;->x:Ljava/lang/String;

    .line 2275
    iput-object v7, v4, Lcom/xiaomi/k/a/z;->c:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Lcom/xiaomi/k/a/aj;->a(Lorg/apache/a/a;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/b/a/b/e;->a([B)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/xiaomi/k/a/z;->a([B)Lcom/xiaomi/k/a/z;

    .line 93
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, Lcom/xiaomi/k/a/d;

    invoke-direct {v3}, Lcom/xiaomi/k/a/d;-><init>()V

    const/4 v4, 0x0

    .line 3077
    :cond_3
    iget-object v7, v3, Lcom/xiaomi/k/a/d;->a:Ljava/util/List;

    if-nez v7, :cond_4

    .line 3078
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/xiaomi/k/a/d;->a:Ljava/util/List;

    .line 3080
    :cond_4
    iget-object v7, v3, Lcom/xiaomi/k/a/d;->a:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4069
    :cond_6
    iget-object p0, v3, Lcom/xiaomi/k/a/d;->a:Ljava/util/List;

    if-nez p0, :cond_7

    const/4 p0, 0x0

    goto :goto_2

    :cond_7
    iget-object p0, v3, Lcom/xiaomi/k/a/d;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_2
    if-eqz p0, :cond_8

    .line 104
    new-instance p0, Lcom/xiaomi/k/a/z;

    const-string p3, "-1"

    invoke-direct {p0, p3, v2}, Lcom/xiaomi/k/a/z;-><init>(Ljava/lang/String;Z)V

    .line 4381
    iput-object p1, p0, Lcom/xiaomi/k/a/z;->e:Ljava/lang/String;

    .line 5251
    iput-object p2, p0, Lcom/xiaomi/k/a/z;->b:Ljava/lang/String;

    .line 107
    sget-object p1, Lcom/xiaomi/k/a/k;->m:Lcom/xiaomi/k/a/k;

    iget-object p1, p1, Lcom/xiaomi/k/a/k;->x:Ljava/lang/String;

    .line 5275
    iput-object p1, p0, Lcom/xiaomi/k/a/z;->c:Ljava/lang/String;

    .line 108
    invoke-static {v3}, Lcom/xiaomi/k/a/aj;->a(Lorg/apache/a/a;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/b/a/b/e;->a([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/k/a/z;->a([B)Lcom/xiaomi/k/a/z;

    .line 109
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/xiaomi/k/a/e;

    invoke-direct {v0}, Lcom/xiaomi/k/a/e;-><init>()V

    .line 5278
    iput-object p1, v0, Lcom/xiaomi/k/a/e;->f:Ljava/lang/String;

    .line 6185
    iput-object p2, v0, Lcom/xiaomi/k/a/e;->c:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/k/a/e;->a(J)Lcom/xiaomi/k/a/e;

    .line 7161
    iput-object p5, v0, Lcom/xiaomi/k/a/e;->b:Ljava/lang/String;

    const-string p1, "push_sdk_channel"

    .line 8137
    iput-object p1, v0, Lcom/xiaomi/k/a/e;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 8385
    iput-object p1, v0, Lcom/xiaomi/k/a/e;->i:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 9302
    iput-object p1, v0, Lcom/xiaomi/k/a/e;->g:Ljava/lang/String;

    const/4 p1, 0x1

    .line 169
    invoke-virtual {v0, p1}, Lcom/xiaomi/k/a/e;->a(Z)Lcom/xiaomi/k/a/e;

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/k/a/e;->b(J)Lcom/xiaomi/k/a/e;

    .line 171
    invoke-static {}, Lcom/xiaomi/push/service/bx;->a()Ljava/lang/String;

    move-result-object p1

    .line 9326
    iput-object p1, v0, Lcom/xiaomi/k/a/e;->h:Ljava/lang/String;

    .line 172
    invoke-static {p0, v0}, Lcom/xiaomi/push/service/by;->a(Landroid/content/Context;Lcom/xiaomi/k/a/e;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/k/a/e;Z)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string p0, "item is null, verfiy ClientUploadDataItem failed."

    .line 124
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "item.channel is null or empty, verfiy ClientUploadDataItem failed."

    .line 129
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "item.category is null or empty, verfiy ClientUploadDataItem failed."

    .line 134
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "item.name is null or empty, verfiy ClientUploadDataItem failed."

    .line 139
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    .line 143
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/provider/a;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "item.category can only contain ascii char, verfiy ClientUploadDataItem failed."

    .line 144
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    .line 148
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/provider/a;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "item.name can only contain ascii char, verfiy ClientUploadDataItem failed."

    .line 149
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    .line 153
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/k/a/e;->b:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/k/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x2800

    if-le p1, v1, :cond_6

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "item.data is too large("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/k/a/e;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), max size for data is 10240"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , verfiy ClientUploadDataItem failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/String;)V

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 182
    invoke-static {}, Lcom/xiaomi/b/a/a/o;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.hybrid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.class public final Lcom/xiaomi/push/service/bu;
.super Ljava/lang/Object;
.source "Sync.java"

# interfaces
.implements Lcom/xiaomi/push/service/an;


# static fields
.field private static volatile f:Lcom/xiaomi/push/service/bu;


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:J

.field private volatile d:Z

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/service/bw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/xiaomi/push/service/bu;->d:Z

    .line 35
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/service/bu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/service/bu;->a:Landroid/content/Context;

    const-string v1, "sync"

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/service/bu;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/bu;
    .locals 2

    .line 43
    sget-object v0, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/xiaomi/push/service/bu;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaomi/push/service/bu;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/service/bu;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bu;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/push/service/bu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    sget-object v0, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    iget-object v0, v0, Lcom/xiaomi/push/service/bu;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/b/a/a/n;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/bu;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/xiaomi/push/service/bu;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/push/service/bu;)Landroid/content/SharedPreferences;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/xiaomi/push/service/bu;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic b()Lcom/xiaomi/push/service/bu;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaomi/push/service/bu;->f:Lcom/xiaomi/push/service/bu;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaomi/push/service/bu;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 60
    iget-boolean v0, p0, Lcom/xiaomi/push/service/bu;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/xiaomi/push/service/bu;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 68
    :cond_1
    iput-wide v0, p0, Lcom/xiaomi/push/service/bu;->c:J

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/xiaomi/push/service/bu;->d:Z

    .line 71
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 72
    iget-object v1, p0, Lcom/xiaomi/push/service/bu;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/b/a/d/e;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/e;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/push/service/bv;

    invoke-direct {v2, p0}, Lcom/xiaomi/push/service/bv;-><init>(Lcom/xiaomi/push/service/bu;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/b/a/d/e;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final a(Lcom/xiaomi/push/service/bw;)V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/xiaomi/push/service/bu;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/xiaomi/push/service/bw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    .line 131
    iget-object v1, p0, Lcom/xiaomi/push/service/bu;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/b/a/d/e;->a(Landroid/content/Context;)Lcom/xiaomi/b/a/d/e;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/b/a/d/e;->a(Ljava/lang/Runnable;I)V

    :cond_0
    return-void
.end method
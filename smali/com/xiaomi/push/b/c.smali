.class final Lcom/xiaomi/push/b/c;
.super Lcom/xiaomi/push/b/f;
.source "LogUploader.java"


# instance fields
.field private b:Ljava/io/File;

.field private synthetic c:I

.field private synthetic d:Ljava/util/Date;

.field private synthetic e:Ljava/util/Date;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Z

.field private synthetic i:Lcom/xiaomi/push/b/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/b/b;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    iput p2, p0, Lcom/xiaomi/push/b/c;->c:I

    iput-object p3, p0, Lcom/xiaomi/push/b/c;->d:Ljava/util/Date;

    iput-object p4, p0, Lcom/xiaomi/push/b/c;->e:Ljava/util/Date;

    iput-object p5, p0, Lcom/xiaomi/push/b/c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/push/b/c;->g:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/xiaomi/push/b/c;->h:Z

    invoke-direct {p0, p1}, Lcom/xiaomi/push/b/f;-><init>(Lcom/xiaomi/push/b/b;)V

    return-void
.end method


# virtual methods
.method public final postProcess()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/xiaomi/push/b/c;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/b/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    invoke-static {v0}, Lcom/xiaomi/push/b/b;->b(Lcom/xiaomi/push/b/b;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/push/b/g;

    iget-object v2, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    iget-object v3, p0, Lcom/xiaomi/push/b/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/b/c;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/b/c;->b:Ljava/io/File;

    iget-boolean v6, p0, Lcom/xiaomi/push/b/c;->h:Z

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/b/g;-><init>(Lcom/xiaomi/push/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/push/b/b;->a(Lcom/xiaomi/push/b/b;J)V

    return-void
.end method

.method public final process()V
    .locals 5

    .line 92
    invoke-static {}, Landroid/provider/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    invoke-static {v2}, Lcom/xiaomi/push/b/b;->a(Lcom/xiaomi/push/b/b;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/.logcache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    new-instance v1, Lcom/xiaomi/push/b/a;

    invoke-direct {v1}, Lcom/xiaomi/push/b/a;-><init>()V

    .line 100
    iget v2, p0, Lcom/xiaomi/push/b/c;->c:I

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/b/a;->a(I)V

    .line 101
    iget-object v2, p0, Lcom/xiaomi/push/b/c;->i:Lcom/xiaomi/push/b/b;

    invoke-static {v2}, Lcom/xiaomi/push/b/b;->a(Lcom/xiaomi/push/b/b;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/b/c;->d:Ljava/util/Date;

    iget-object v4, p0, Lcom/xiaomi/push/b/c;->e:Ljava/util/Date;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaomi/push/b/a;->a(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/b/c;->b:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    return-void
.end method

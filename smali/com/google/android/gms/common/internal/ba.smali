.class final Lcom/google/android/gms/common/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Landroid/os/IBinder;

.field private final e:Lcom/google/android/gms/common/internal/z;

.field private f:Landroid/content/ComponentName;

.field private final synthetic g:Lcom/google/android/gms/common/internal/az;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/az;Lcom/google/android/gms/common/internal/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->b(Lcom/google/android/gms/common/internal/az;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->d(Lcom/google/android/gms/common/internal/az;)Lcom/google/android/gms/common/a/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/common/a/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/ba;->c:Z

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    return-void
.end method

.method public final a(Landroid/content/ServiceConnection;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->d(Lcom/google/android/gms/common/internal/az;)Lcom/google/android/gms/common/a/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/z;->c()Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 p1, 0x3

    .line 24
    iput p1, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    .line 25
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/az;->d(Lcom/google/android/gms/common/internal/az;)Lcom/google/android/gms/common/a/a;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/z;->c()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/z;->b()I

    move-result v1

    .line 30
    invoke-static {p1, v0, p0, v1}, Lcom/google/android/gms/common/a/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/ba;->c:Z

    .line 31
    iget-boolean p1, p0, Lcom/google/android/gms/common/internal/ba;->c:Z

    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/az;->b(Lcom/google/android/gms/common/internal/az;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->b(Lcom/google/android/gms/common/internal/az;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/az;->e(Lcom/google/android/gms/common/internal/az;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    .line 36
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/az;->d(Lcom/google/android/gms/common/internal/az;)Lcom/google/android/gms/common/a/a;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/gms/common/a/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method public final b(Landroid/content/ServiceConnection;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->d(Lcom/google/android/gms/common/internal/az;)Lcom/google/android/gms/common/a/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->c(Lcom/google/android/gms/common/internal/az;)Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ba;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    return v0
.end method

.method public final c(Landroid/content/ServiceConnection;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()Landroid/os/IBinder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public final f()Landroid/content/ComponentName;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->f:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->a(Lcom/google/android/gms/common/internal/az;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/az;->b(Lcom/google/android/gms/common/internal/az;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/common/internal/ba;->d:Landroid/os/IBinder;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ba;->f:Landroid/content/ComponentName;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 11
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 13
    :cond_0
    iput v3, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/az;->a(Lcom/google/android/gms/common/internal/az;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->g:Lcom/google/android/gms/common/internal/az;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/az;->b(Lcom/google/android/gms/common/internal/az;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/ba;->e:Lcom/google/android/gms/common/internal/z;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/common/internal/ba;->d:Landroid/os/IBinder;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/common/internal/ba;->f:Landroid/content/ComponentName;

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/internal/ba;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 20
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lcom/google/android/gms/common/internal/ba;->b:I

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

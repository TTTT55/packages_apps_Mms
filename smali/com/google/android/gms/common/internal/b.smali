.class public abstract Lcom/google/android/gms/common/internal/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:[Lcom/google/android/gms/common/c;


# instance fields
.field private A:Z

.field private volatile B:Lcom/google/android/gms/common/internal/aw;

.field final a:Landroid/os/Handler;

.field protected b:Lcom/google/android/gms/common/internal/e;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:Lcom/google/android/gms/common/internal/ak;

.field private final k:Landroid/content/Context;

.field private final l:Landroid/os/Looper;

.field private final m:Lcom/google/android/gms/common/internal/y;

.field private final n:Lcom/google/android/gms/common/f;

.field private final o:Ljava/lang/Object;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/google/android/gms/common/internal/ah;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field private r:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field private t:Lcom/google/android/gms/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/l;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private u:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final v:Lcom/google/android/gms/common/internal/c;

.field private final w:Lcom/google/android/gms/common/internal/d;

.field private final x:I

.field private final y:Ljava/lang/String;

.field private z:Lcom/google/android/gms/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 357
    new-array v0, v0, [Lcom/google/android/gms/common/c;

    sput-object v0, Lcom/google/android/gms/common/internal/b;->d:[Lcom/google/android/gms/common/c;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    .line 358
    filled-new-array {v0, v1}, [Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/y;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/d;Ljava/lang/String;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->p:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->z:Lcom/google/android/gms/common/a;

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/b;->A:Z

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->B:Lcom/google/android/gms/common/internal/aw;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 17
    invoke-static {p1, v0}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->k:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 18
    invoke-static {p2, p1}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->l:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 19
    invoke-static {p3, p1}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/y;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->m:Lcom/google/android/gms/common/internal/y;

    const-string p1, "API availability must not be null"

    .line 21
    invoke-static {p4, p1}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/f;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->n:Lcom/google/android/gms/common/f;

    .line 22
    new-instance p1, Lcom/google/android/gms/common/internal/i;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/i;-><init>(Lcom/google/android/gms/common/internal/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    .line 23
    iput p5, p0, Lcom/google/android/gms/common/internal/b;->x:I

    .line 24
    iput-object p6, p0, Lcom/google/android/gms/common/internal/b;->v:Lcom/google/android/gms/common/internal/c;

    .line 25
    iput-object p7, p0, Lcom/google/android/gms/common/internal/b;->w:Lcom/google/android/gms/common/internal/d;

    .line 26
    iput-object p8, p0, Lcom/google/android/gms/common/internal/b;->y:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->z:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/ah;)Lcom/google/android/gms/common/internal/ah;
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->q:Lcom/google/android/gms/common/internal/ah;

    return-object p1
.end method

.method private final a(ILandroid/os/IInterface;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 65
    :goto_2
    invoke-static {v0}, Landroid/provider/a;->b(Z)V

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/common/internal/b;->r:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1057
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/common/internal/b;->g:J

    goto/16 :goto_3

    .line 72
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    if-eqz p1, :cond_3

    const-string p1, "GmsClient"

    .line 73
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/ak;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->m:Lcom/google/android/gms/common/internal/y;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ak;->a()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ak;->b()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ak;->c()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/b;->q()Ljava/lang/String;

    move-result-object v7

    .line 82
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 84
    :cond_3
    new-instance p1, Lcom/google/android/gms/common/internal/l;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/l;-><init>(Lcom/google/android/gms/common/internal/b;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    .line 92
    new-instance p1, Lcom/google/android/gms/common/internal/ak;

    const-string p2, "com.google.android.gms"

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->i()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-direct {p1, p2, v2, v1}, Lcom/google/android/gms/common/internal/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 97
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->m:Lcom/google/android/gms/common/internal/y;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 98
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/ak;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ak;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 100
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/ak;->c()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/b;->q()Ljava/lang/String;

    move-result-object v4

    .line 103
    new-instance v5, Lcom/google/android/gms/common/internal/z;

    invoke-direct {v5, p2, v1, v2}, Lcom/google/android/gms/common/internal/z;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v5, v3, v4}, Lcom/google/android/gms/common/internal/y;->a(Lcom/google/android/gms/common/internal/z;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "GmsClient"

    .line 105
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 106
    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/ak;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 109
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/b;->a(II)V

    goto :goto_3

    .line 116
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    if-eqz p1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->m:Lcom/google/android/gms/common/internal/y;

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.gms"

    const/16 v4, 0x81

    .line 120
    iget-object v5, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/b;->q()Ljava/lang/String;

    move-result-object v6

    .line 122
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/internal/y;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->t:Lcom/google/android/gms/common/internal/l;

    .line 124
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;)V
    .locals 4

    .line 3171
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 3173
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/b;->A:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 3175
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v3, 0x10

    invoke-virtual {v2, v0, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;I)V
    .locals 1

    const/4 v0, 0x0

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/b;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/aw;)V
    .locals 0

    .line 4051
    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->B:Lcom/google/android/gms/common/internal/aw;

    return-void
.end method

.method private final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    .line 128
    monitor-exit v0

    return p1

    .line 129
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/b;->a(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 130
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/b;IILandroid/os/IInterface;)Z
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/b;->a(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/b;)Ljava/lang/Object;
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/b;)Z
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/b;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/b;)Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/b;->A:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/a;
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->z:Lcom/google/android/gms/common/a;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/internal/c;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->v:Lcom/google/android/gms/common/internal/c;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/common/internal/b;)Ljava/util/ArrayList;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/common/internal/b;)Lcom/google/android/gms/common/internal/d;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/google/android/gms/common/internal/b;->w:Lcom/google/android/gms/common/internal/d;

    return-object p0
.end method

.method private final q()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->k:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method private final r()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 152
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final s()Z
    .locals 2

    .line 330
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/b;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 334
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 336
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    iget-object v3, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/j;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 162
    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/b;->q:Lcom/google/android/gms/common/internal/ah;

    .line 163
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 164
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/b;->a(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    .line 163
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 160
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected final a(I)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 59
    iput p1, p0, Lcom/google/android/gms/common/internal/b;->e:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/b;->f:J

    return-void
.end method

.method protected final a(II)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/internal/n;-><init>(Lcom/google/android/gms/common/internal/b;I)V

    const/4 p1, 0x7

    const/4 v3, -0x1

    .line 194
    invoke-virtual {v1, p1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 195
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/m;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/m;-><init>(Lcom/google/android/gms/common/internal/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    .line 190
    invoke-virtual {v1, p1, p4, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/a;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/b;->h:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/b;->i:J

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/ab;Ljava/util/Set;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/ab;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->m()Landroid/os/Bundle;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/google/android/gms/common/internal/u;

    iget v2, p0, Lcom/google/android/gms/common/internal/b;->x:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/u;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->k:Landroid/content/Context;

    .line 210
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    iput-object v2, v1, Lcom/google/android/gms/common/internal/u;->a:Ljava/lang/String;

    .line 215
    iput-object v0, v1, Lcom/google/android/gms/common/internal/u;->d:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 220
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/u;->c:[Lcom/google/android/gms/common/api/Scope;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->l()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->l()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/u;->e:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    .line 231
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/ab;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/u;->b:Landroid/os/IBinder;

    .line 237
    :cond_2
    sget-object p1, Lcom/google/android/gms/common/internal/b;->d:[Lcom/google/android/gms/common/c;

    .line 239
    iput-object p1, v1, Lcom/google/android/gms/common/internal/u;->f:[Lcom/google/android/gms/common/c;

    .line 2187
    sget-object p1, Lcom/google/android/gms/common/internal/b;->d:[Lcom/google/android/gms/common/c;

    .line 241
    iput-object p1, v1, Lcom/google/android/gms/common/internal/u;->g:[Lcom/google/android/gms/common/c;

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->p:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->q:Lcom/google/android/gms/common/internal/ah;

    if-eqz p2, :cond_3

    .line 244
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->q:Lcom/google/android/gms/common/internal/ah;

    new-instance v0, Lcom/google/android/gms/common/internal/k;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/k;-><init>(Lcom/google/android/gms/common/internal/b;I)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/ah;->a(Lcom/google/android/gms/common/internal/af;Lcom/google/android/gms/common/internal/u;)V

    goto :goto_1

    :cond_3
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 245
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 253
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    .line 254
    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/b;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_1
    move-exception p1

    .line 251
    throw p1

    :catch_2
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 248
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3166
    iget-object p1, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/b;->a:Landroid/os/Handler;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3167
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    .line 3168
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 3169
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/e;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/internal/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Connection progress callbacks cannot be null."

    .line 141
    invoke-static {p1, v0}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b;->b:Lcom/google/android/gms/common/internal/e;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/b;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/g;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 259
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/g;->n()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    .line 268
    iget-object v2, p0, Lcom/google/android/gms/common/internal/b;->r:Landroid/os/IInterface;

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    iget-object v3, p0, Lcom/google/android/gms/common/internal/b;->p:Ljava/lang/Object;

    monitor-enter v3

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->q:Lcom/google/android/gms/common/internal/ah;

    .line 272
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "mConnectState="

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v1, :pswitch_data_0

    const-string v1, "UNKNOWN"

    .line 285
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v1, "DISCONNECTING"

    .line 281
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "CONNECTED"

    .line 279
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "LOCAL_CONNECTING"

    .line 277
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "REMOTE_CONNECTING"

    .line 275
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v1, "DISCONNECTED"

    .line 283
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v1, " mService="

    .line 286
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_0

    const-string v1, "null"

    .line 288
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "@"

    .line 291
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 292
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_1
    const-string v1, " mServiceBroker="

    .line 293
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_1

    const-string v0, "null"

    .line 295
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "IGmsServiceBroker@"

    .line 297
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 298
    invoke-interface {v0}, Lcom/google/android/gms/common/internal/ah;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 300
    iget-wide v1, p0, Lcom/google/android/gms/common/internal/b;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 302
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastConnectedTime="

    .line 303
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/gms/common/internal/b;->g:J

    new-instance v2, Ljava/util/Date;

    iget-wide v7, p0, Lcom/google/android/gms/common/internal/b;->g:J

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 304
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    :cond_2
    iget-wide v1, p0, Lcom/google/android/gms/common/internal/b;->f:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 306
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "lastSuspendedCause="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 307
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->e:I

    packed-switch v1, :pswitch_data_1

    .line 312
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :pswitch_5
    const-string v1, "CAUSE_NETWORK_LOST"

    .line 310
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_3

    :pswitch_6
    const-string v1, "CAUSE_SERVICE_DISCONNECTED"

    .line 308
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_3
    const-string v1, " lastSuspendedTime="

    .line 314
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-wide v5, p0, Lcom/google/android/gms/common/internal/b;->f:J

    new-instance v2, Ljava/util/Date;

    iget-wide v7, p0, Lcom/google/android/gms/common/internal/b;->f:J

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 315
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/common/internal/b;->i:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    .line 318
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v1, "lastFailedStatus="

    .line 319
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/common/internal/b;->h:I

    .line 320
    invoke-static {v1}, Landroid/provider/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    .line 322
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/b;->i:J

    new-instance p2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/gms/common/internal/b;->i:J

    invoke-direct {p2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 323
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 272
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 269
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final b()Z
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/content/Intent;
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->j:Lcom/google/android/gms/common/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ak;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()I
    .locals 1

    .line 343
    sget v0, Lcom/google/android/gms/common/f;->a:I

    return v0
.end method

.method public final h()[Lcom/google/android/gms/common/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->B:Lcom/google/android/gms/common/internal/aw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/aw;->b:[Lcom/google/android/gms/common/c;

    return-object v0
.end method

.method protected abstract i()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract j()Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method public l()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()Landroid/os/Bundle;
    .locals 1

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected final n()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/internal/b;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/b;->u:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/b;->n()V

    .line 205
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->r:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Landroid/provider/a;->a(ZLjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/google/android/gms/common/internal/b;->r:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 203
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

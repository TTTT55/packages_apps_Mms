.class public final Lcom/google/android/gms/common/api/internal/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/u;
.implements Lcom/google/android/gms/common/api/v;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Lcom/google/android/gms/common/api/internal/bz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/by;->a:Lcom/google/android/gms/common/api/a;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/common/api/internal/by;->b:Z

    return-void
.end method

.method private final a()V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/bz;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Landroid/provider/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/by;->a()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/bz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bz;->a(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/by;->a()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/bz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bz;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/by;->a()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/by;->a:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/by;->b:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/bz;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/bz;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/by;->c:Lcom/google/android/gms/common/api/internal/bz;

    return-void
.end method

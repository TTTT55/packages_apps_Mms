.class final Lcom/google/android/gms/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/b;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Lcom/google/android/gms/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/a/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/a/j;->d:Lcom/google/android/gms/a/a;

    iput-object p2, p0, Lcom/google/android/gms/a/j;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/a/j;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/a/j;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/a/j;->d:Lcom/google/android/gms/a/a;

    invoke-static {v0}, Lcom/google/android/gms/a/a;->b(Lcom/google/android/gms/a/a;)Lcom/google/android/gms/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/a/j;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/a/j;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/a/j;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/a/f;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

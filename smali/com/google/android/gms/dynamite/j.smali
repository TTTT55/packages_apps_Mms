.class final Lcom/google/android/gms/dynamite/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/c;)Lcom/google/android/gms/dynamite/d;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/d;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/d;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/d;->a:I

    const/4 v1, 0x1

    .line 4
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/c;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/d;->b:I

    .line 5
    iget p1, v0, Lcom/google/android/gms/dynamite/d;->a:I

    if-nez p1, :cond_0

    iget p1, v0, Lcom/google/android/gms/dynamite/d;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Lcom/google/android/gms/dynamite/d;->c:I

    goto :goto_0

    .line 7
    :cond_0
    iget p1, v0, Lcom/google/android/gms/dynamite/d;->a:I

    iget p2, v0, Lcom/google/android/gms/dynamite/d;->b:I

    if-lt p1, p2, :cond_1

    const/4 p1, -0x1

    .line 8
    iput p1, v0, Lcom/google/android/gms/dynamite/d;->c:I

    goto :goto_0

    .line 9
    :cond_1
    iput v1, v0, Lcom/google/android/gms/dynamite/d;->c:I

    :goto_0
    return-object v0
.end method

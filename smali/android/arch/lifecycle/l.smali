.class final Landroid/arch/lifecycle/l;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"


# instance fields
.field final a:I

.field final b:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p1, p0, Landroid/arch/lifecycle/l;->a:I

    .line 193
    iput-object p2, p0, Landroid/arch/lifecycle/l;->b:Ljava/lang/reflect/Method;

    .line 194
    iget-object p1, p0, Landroid/arch/lifecycle/l;->b:Ljava/lang/reflect/Method;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    check-cast p1, Landroid/arch/lifecycle/l;

    .line 207
    iget v2, p0, Landroid/arch/lifecycle/l;->a:I

    iget v3, p1, Landroid/arch/lifecycle/l;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/arch/lifecycle/l;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Landroid/arch/lifecycle/l;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 212
    iget v0, p0, Landroid/arch/lifecycle/l;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/arch/lifecycle/l;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

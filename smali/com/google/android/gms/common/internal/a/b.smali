.class public Lcom/google/android/gms/common/internal/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:J

.field private i:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    iput-object p3, p0, Lcom/google/android/gms/common/internal/a/b;->a:Ljava/lang/String;

    .line 2017
    iput-wide p1, p0, Lcom/google/android/gms/common/internal/a/b;->b:J

    .line 2018
    iput-object p4, p0, Lcom/google/android/gms/common/internal/a/b;->c:Ljava/lang/String;

    .line 2019
    iput-object p5, p0, Lcom/google/android/gms/common/internal/a/b;->d:Ljava/lang/String;

    .line 2020
    iput-object p6, p0, Lcom/google/android/gms/common/internal/a/b;->e:Ljava/lang/String;

    .line 2021
    iput-object p7, p0, Lcom/google/android/gms/common/internal/a/b;->f:Ljava/lang/String;

    .line 2022
    iput p8, p0, Lcom/google/android/gms/common/internal/a/b;->g:I

    .line 2023
    iput-wide p9, p0, Lcom/google/android/gms/common/internal/a/b;->h:J

    .line 2024
    iput p11, p0, Lcom/google/android/gms/common/internal/a/b;->i:I

    return-void
.end method

.method public static a(Landroid/os/Parcel;)I
    .locals 5

    .line 1003
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 21
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v3, v0

    const/16 v4, 0x4f45

    if-eq v3, v4, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/gms/common/internal/a/c;

    const-string v2, "Expected object header. Got 0x"

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/a/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_1
    add-int/2addr v1, v2

    if-lt v1, v2, :cond_2

    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    if-gt v1, v0, :cond_2

    return v1

    .line 27
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/internal/a/c;

    const/16 v3, 0x36

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Size read is invalid start="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " end="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/a/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 100
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 103
    :cond_0
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    add-int/2addr v0, p1

    .line 104
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static a(Landroid/os/Parcel;I)V
    .locals 1

    .line 8
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static a(Landroid/os/Parcel;II)V
    .locals 4

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/a/c;

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/a/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static b(Landroid/os/Parcel;I)Z
    .locals 1

    const/4 v0, 0x4

    .line 29
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 413
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 414
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p2

    add-int/2addr v0, p1

    .line 418
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static c(Landroid/os/Parcel;I)B
    .locals 1

    const/4 v0, 0x4

    .line 36
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 420
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 421
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 424
    :cond_0
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    add-int/2addr v0, p1

    .line 425
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object p2
.end method

.method public static d(Landroid/os/Parcel;I)I
    .locals 1

    const/4 v0, 0x4

    .line 42
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public static e(Landroid/os/Parcel;I)J
    .locals 1

    const/16 v0, 0x8

    .line 49
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 50
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Landroid/os/Parcel;I)F
    .locals 1

    const/4 v0, 0x4

    .line 63
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 64
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public static g(Landroid/os/Parcel;I)Ljava/lang/Float;
    .locals 4

    .line 65
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1017
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/a/c;

    .line 1018
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected size 4"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (0x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/a/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method public static h(Landroid/os/Parcel;I)D
    .locals 1

    const/16 v0, 0x8

    .line 70
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;II)V

    .line 71
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public static i(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 2

    .line 85
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, p1

    .line 90
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static j(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .locals 2

    .line 92
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    add-int/2addr v0, p1

    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static k(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .locals 2

    .line 106
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/a/b;->m(Landroid/os/Parcel;I)I

    move-result p1

    .line 107
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    add-int/2addr v0, p1

    .line 111
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v1
.end method

.method public static l(Landroid/os/Parcel;I)V
    .locals 3

    .line 480
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 481
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/a/c;

    const/16 v1, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Overread allowed size end="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/internal/a/c;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0
.end method

.method private static m(Landroid/os/Parcel;I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int v1, p1, v0

    if-eq v1, v0, :cond_0

    shr-int/lit8 p0, p1, 0x10

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2028
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 2032
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 2036
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/a/b;->b:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2040
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/google/android/gms/common/internal/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 2052
    iget v0, p0, Lcom/google/android/gms/common/internal/a/b;->g:I

    return v0
.end method

.method public g()J
    .locals 2

    .line 2056
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/a/b;->h:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 2060
    iget v0, p0, Lcom/google/android/gms/common/internal/a/b;->i:I

    return v0
.end method

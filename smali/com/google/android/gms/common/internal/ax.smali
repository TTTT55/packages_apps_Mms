.class public final Lcom/google/android/gms/common/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/common/internal/aw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v4, v3

    packed-switch v4, :pswitch_data_0

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/a/b;->a(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 16
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/common/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/a/b;->b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/c;

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/a/b;->k(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/a/b;->l(Landroid/os/Parcel;I)V

    .line 22
    new-instance p1, Lcom/google/android/gms/common/internal/aw;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/common/internal/aw;-><init>(Landroid/os/Bundle;[Lcom/google/android/gms/common/c;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 4
    new-array p1, p1, [Lcom/google/android/gms/common/internal/aw;

    return-object p1
.end method

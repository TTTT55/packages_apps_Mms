.class public final Lcom/google/android/gms/b/c/aa;
.super Lcom/google/android/gms/common/internal/a/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/b/c/aa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/b/c/y;

.field private c:Lcom/google/android/gms/location/j;

.field private d:Lcom/google/android/gms/b/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/c/ab;

    invoke-direct {v0}, Lcom/google/android/gms/b/c/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/b/c/aa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/b/c/y;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/a/a;-><init>()V

    iput p1, p0, Lcom/google/android/gms/b/c/aa;->a:I

    iput-object p2, p0, Lcom/google/android/gms/b/c/aa;->b:Lcom/google/android/gms/b/c/y;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/j;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/b/c/aa;->c:Lcom/google/android/gms/location/j;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/b/c/c;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/google/android/gms/b/c/c;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/b/c/d;

    invoke-direct {p1, p4}, Lcom/google/android/gms/b/c/d;-><init>(Landroid/os/IBinder;)V

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/b/c/aa;->d:Lcom/google/android/gms/b/c/c;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Landroid/provider/a;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/b/c/aa;->a:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Landroid/provider/a;->a(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/b/c/aa;->b:Lcom/google/android/gms/b/c/y;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Landroid/provider/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/b/c/aa;->c:Lcom/google/android/gms/location/j;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/b/c/aa;->c:Lcom/google/android/gms/location/j;

    invoke-interface {p2}, Lcom/google/android/gms/location/j;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v3, 0x3

    invoke-static {p1, v3, p2, v2}, Landroid/provider/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/b/c/aa;->d:Lcom/google/android/gms/b/c/c;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/b/c/aa;->d:Lcom/google/android/gms/b/c/c;

    invoke-interface {v1}, Lcom/google/android/gms/b/c/c;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-static {p1, p2, v1, v2}, Landroid/provider/a;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Landroid/provider/a;->a(Landroid/os/Parcel;I)V

    return-void
.end method

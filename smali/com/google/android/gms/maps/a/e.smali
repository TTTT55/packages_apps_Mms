.class public abstract Lcom/google/android/gms/maps/a/e;
.super Lcom/google/android/gms/b/d/b;

# interfaces
.implements Lcom/google/android/gms/maps/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IOnMapClickListener"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/b/d/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/b/d/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/a/e;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

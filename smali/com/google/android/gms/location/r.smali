.class public final Lcom/google/android/gms/location/r;
.super Lcom/google/android/gms/b/c/a;

# interfaces
.implements Lcom/google/android/gms/location/p;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/b/c/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/c/a;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/b/c/v;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/b/c/a;->b(ILandroid/os/Parcel;)V

    return-void
.end method

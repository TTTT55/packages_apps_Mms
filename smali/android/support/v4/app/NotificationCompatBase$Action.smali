.class public abstract Landroid/support/v4/app/NotificationCompatBase$Action;
.super Ljava/lang/Object;
.source "NotificationCompatBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActionIntent()Landroid/app/PendingIntent;
.end method

.method public abstract getAllowGeneratedReplies()Z
.end method

.method public abstract getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getIcon()I
.end method

.method public abstract getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.class abstract Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .locals 3

    .line 122
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    .line 124
    iput p1, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    return-void

    .line 125
    :cond_0
    iget v0, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    if-ne v0, p1, :cond_1

    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given job ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different than previous "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serviceProcessingFinished()V
    .locals 0

    return-void
.end method

.method public serviceProcessingStarted()V
    .locals 0

    return-void
.end method

.method public serviceStartReceived()V
    .locals 0

    return-void
.end method

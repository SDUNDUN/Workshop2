rule "초록색 구체 소환":
        @Event eachPlayer
            @Team all
                @Slot all
                    @Condition eventPlayer.isHoldingButton(Button.INTERACT) == true

                        createEffect(getAllPlayers(), Effect.SPHERE, Color.GREEN, eventPlayer.getEyePosition(), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
                            wait(0.1, Wait.IGNORE_CONDITION)
                                loopIfConditionIsTrue()